cmake_minimum_required(VERSION 3.12)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(CMAKE_COMPILER_IS_CLANG ON)
endif()

project(@ProjectName@ CXX VERSION 0.0.1)  # TODO update version

add_subdirectory(dependencies)

configure_file(
    ${PROJECT_SOURCE_DIR}/include/Configuration.hpp.in
    ${PROJECT_SOURCE_DIR}/include/Configuration.hpp
)

file(GLOB_RECURSE SOURCE_FILES
    ${PROJECT_SOURCE_DIR}/src/*.cpp
)

add_library(${PROJECT_NAME} ${SOURCE_FILES})

target_include_directories(${PROJECT_NAME}
    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

if (CMAKE_COMPILER_IS_GNUCXX OR CMAKE_COMPILER_IS_CLANG)
    target_link_libraries(
        ${PROJECT_NAME}
        PUBLIC
            stdc++fs
    )
endif()

if (MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE /W4)
else()
    target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra)
endif()

set_target_properties(
    ${PROJECT_NAME}
    PROPERTIES
        CXX_STANDARD          17
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS        OFF
)

install(TARGETS @Filename@
        DESTINATION bin
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                    GROUP_EXECUTE GROUP_READ
)
install(DIRECTORY ${PROJECT_SOURCE_DIR}/data/
        DESTINATION bin
        PATTERN "data/exclude" EXCLUDE
        REGEX ".+\.md$" EXCLUDE
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                    GROUP_EXECUTE GROUP_READ
)
