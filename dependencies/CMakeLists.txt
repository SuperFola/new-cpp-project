include(FetchContent)

FetchContent_Declare(
    argh
    GIT_REPOSITORY "https://github.com/adishavit/argh"
    GIT_TAG 1a9e7fa831033f0431a250b625d407efc08d9620
)

FetchContent_MakeAvailable(argh)

add_subdirectory(argh)