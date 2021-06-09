#include <iostream>
#include <argh.h>

int main([[maybe_unused]] int argc, char** argv)
{
    std::cout << "Hello world!\n";

    argh::parser cmdl(argv);

    if (cmdl[{ "-v", "--verbose" }])
        std::cout << "Verbose, I am.\n";

    return 0;
}