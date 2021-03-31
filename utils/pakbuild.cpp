
#include "../src/ZipFile.h"
#include "../src/streams/memstream.h"

#include "../src/methods/Bzip2Method.h"

#include <fstream>
#include <cstdio>
#include <cstring>
#include <dirent.h>

static void print_usage(const char* error_message)
{
    printf("pakbuild: %s\n", error_message);
    printf("usage: pakbuild option [flags] path(s)\n");
    printf("options\n");
    printf("  pack     Build a new .pak file with the provided paths\n");
    printf("  unpack   Extract a .pak file to the provided path\n");
    printf("  list     Lists the contents and information about the .pak file\n");
    printf("flags\n");
    printf("  -d       pack: the path(s) are directories\n");
    printf("  -p <pwd> [un]pack: the password to lock/unlock the .pak file with\n");
}

void add_file(ZipArchive::Ptr& zip, const std::string& file, const std::string& password)
{
    printf("adding file: %s\n", file.c_str());

	std::ifstream fileStream(file, std::ios::binary);
    ZipArchiveEntry::Ptr entry = zip->CreateEntry(file);
    assert(entry != nullptr);

    if (password.size()) {
        entry->SetPassword(password);
    }

    // if this is not set, the input stream would be readen twice
    // this method is only useful for password protected files
    entry->UseDataDescriptor();

    Bzip2Method::Ptr ctx = Bzip2Method::Create();
    ctx->SetBlockSize(Bzip2Method::BlockSize::B600);

    entry->SetCompressionStream(fileStream, ctx, 
        ZipArchiveEntry::CompressionMode::Immediate);
}

void add_directory(ZipArchive::Ptr& zip, const std::string& directory, const std::string& password)
{
    struct dirent *entry = nullptr;
    DIR *dp = nullptr;

    dp = opendir(directory.c_str());
    if (dp != nullptr) {
        while ((entry = readdir(dp))) {
            std::string path(entry->d_name);
            add_file(zip, path, password);
        }
    }

    closedir(dp);
}

void stream_copy_n(std::istream & in, std::size_t count, std::ostream & out)
{
    const std::size_t buffer_size = 4096;
    char buffer[buffer_size];
    while(count > buffer_size)
    {
        in.read(buffer, buffer_size);
        out.write(buffer, buffer_size);
        count -= buffer_size;
    }

    in.read(buffer, count);
    out.write(buffer, count);
}

int main(int argc, char** argv)
{
    int requiredArgC = 3;

    if (argc < requiredArgC) {
        print_usage("invalid number of arguments");
        return -1;
    }

    if (!strcmp(argv[1], "pack")) {
        bool  isDirectory = false;
        bool  hasPassword = false;
        char* password    = nullptr;
        std::vector<std::string> paths;

        for (int i = 2; i < argc && argc >= requiredArgC; i++) {
            if (!strcmp(argv[i], "-d")) {
                requiredArgC++;
                isDirectory = true;
            }
            else if (!strcmp(argv[i], "-p")) {
                requiredArgC += 2;
                hasPassword = true;
                password = argv[i + 1];
                i++;
            }
            else {
                paths.push_back(std::string(argv[i]));
            }
        }

        if (argc < requiredArgC) {
            print_usage("invalid number of arguments");
            return -1;
        }
        
        ZipArchive::Ptr archive = ZipFile::Open("build.pak");
        std::string cppPass;
        archive->SetComment("Built with pakbuild");

        if (password) {
            cppPass += password;
        }

        for (const auto& path : paths) {
            if (isDirectory) {
                add_directory(archive, path, cppPass);
            }
            else {
                add_file(archive, path, cppPass);
            }
        }

        // data from contentStream are pumped here
        ZipFile::SaveAndClose(archive, "build.pak");
    }
    else if (!strcmp(argv[1], "unpack")) {
        bool hasPassword = false;
        std::string cppPass;

        if (!strcmp(argv[2], "-p")) {
            hasPassword = true;
            cppPass += argv[3];
            requiredArgC += 2;
        }

        if (argc < requiredArgC) {
            print_usage("invalid number of arguments");
            return -1;
        }

        ZipArchive::Ptr archive = ZipFile::Open(std::string(argv[requiredArgC - 1]));
        if (!archive) {
            printf("pakbuild: invalid path %s\n", argv[requiredArgC - 1]);
            return -1;
        }
        
        size_t entries = archive->GetEntriesCount();
        for (size_t i = 0; i < entries; ++i)
        {
            auto entry = archive->GetEntry(int(i));

            printf("unpacking: %s\n", entry->GetFullName().c_str());
            if (entry->IsPasswordProtected() && hasPassword) {
                entry->SetPassword(cppPass);
            }

            auto dataStream = entry->GetDecompressionStream();
            if (dataStream) {
                std::ofstream dest(entry->GetFullName(), std::ios::binary);
                stream_copy_n(*dataStream, entry->GetSize(), dest);
            }
            else {
                printf("unpacking: skipped due to missing password\n");
            }
        }
    }
    else if (!strcmp(argv[1], "list")) {
        ZipArchive::Ptr archive = ZipFile::Open(std::string(argv[requiredArgC - 1]));
        if (!archive) {
            printf("pakbuild: invalid path %s\n", argv[requiredArgC - 1]);
            return -1;
        }

        size_t entries = archive->GetEntriesCount();
        printf("[o] Listing archive (comment: '%s'):\n", archive->GetComment().c_str());
        printf("[o] Entries count: %lu\n", entries);
        for (size_t i = 0; i < entries; ++i)
        {
            auto entry = archive->GetEntry(int(i));

            printf("[o] -- %s\n", entry->GetFullName().c_str());
            printf("[o]   >> uncompressed size: %lu\n", entry->GetSize());
            printf("[o]   >> compressed size: %lu\n", entry->GetCompressedSize());
            printf("[o]   >> password protected: %s\n", entry->IsPasswordProtected() ? "yes" : "no");
            printf("[o]   >> compression method: %s\n", entry->GetCompressionMethod() == DeflateMethod::CompressionMethod ? "DEFLATE" : "stored");
            printf("[o]   >> comment: %s\n", entry->GetComment().c_str());
            printf("[o]   >> crc32: 0x%08X\n", entry->GetCrc32());
        }

        printf("\n");
    }
    else {
        print_usage("invalid option given");
        return -1;
    }
    return 0;
}
