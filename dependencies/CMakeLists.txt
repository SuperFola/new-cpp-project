include(FetchContent)

FetchContent_Declare(
    argh
    GIT_REPOSITORY "https://github.com/adishavit/argh"
    GIT_TAG a1edee559757e076e570b8f6c2f555d8d00b373c  # 1.3.1
)

FetchContent_MakeAvailable(argh)