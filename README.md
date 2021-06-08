# @ProjectName@

A C++17 project.

TODO project description

# Installation

## Through the latest release

```shell
mkdir -p "${HOME}/.@ProjectFolder@"
cd "${HOME}/.@ProjectFolder@"
install_dir=`pwd`

current=`curl -s https://github.com/@User@/@Repo@/releases/latest | egrep -o "tag/(?[^\"]+)" | cut -c 5- -`
url="https://github.com/@User@/@Repo@/releases/download/$current/linux64.zip"
wget --quiet $url

if [ -f linux64.zip ]; then
    unzip -o linux64.zip
    rm linux64.zip
fi

# export the project path to your PATH variable to call it from everywhere
cat >> $HOME/.bashrc<< EOF
export PATH="\$PATH:${install_dir}/"
EOF
```

## With Docker

```shell
docker pull @DockerImage@:latest
```

# Contributing

Before diving in, read **[ARCHITECTURE.md](ARCHITECTURE.md)**.

* First [fork](/fork) the repository
* Then, clone your fork: `git clone git@github.com:username/project.git`
* Create a branch for your feature: `git checkout -b feat-my-awesome-idea`
* When you are done, push it to your fork and submit a pull request!

Don't know what to work on? Check the [issues](/issues)! ;)

## Our beloved contributors

**TODO**

* [username](https://github.com/username)

# Building

## Dependencies

- C++17
- CMake >= 3.8
- On MacOS versions prior to 10.15, `libc++` lacks `filesystem` in the standard library.
    - Install a new compiler using [Homebrew](https://docs.brew.sh/): `brew install gcc && brew link gcc`
    - Pass compiler path to `cmake` in the build step: `-DCMAKE_CXX_COMPILER=/usr/local/bin/g++-9`

## Through CMake

```shell
git clone --depth=10 --branch=master https://github.com/@User@/@Repo@.git
cd @Repo@
git submodule update --init --recursive
cmake -Bbuild -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
# finally, check if everything works
@CommandLine@ --help
@CLIHelp@
```

# Credits

TODO credits here

# Copyright and Licence information

TODO Copyright (c) year-year NAME. All rights reserved.
