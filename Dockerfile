FROM alpine:3.12 AS permissions-giver

WORKDIR /out

FROM alpine:3.12 AS submodule-initializor

RUN apk --no-cache add git
WORKDIR /out
COPY .git .git
COPY .gitmodules .
RUN git submodule update --init --recursve  \
    && rm -rf `find . -type d -name ".git"` \
    && rm .gitmodules

FROM alpine:3.12 AS builder

RUN apk --no-cache add cmake clang clang-dev make gcc g++ libc-dev linux-headers
COPY include include
COPY src src
COPY CMakeLists.txt .
COPY --from=submodule-initializor /out .
RUN cmake -Bbuild -DCMAKE_BUILD_TYPE=Release \
    && cmake --build build --config Release

FROM alpine:3.12 AS organizer

WORKDIR /out/final
COPY --from=builder build build

FROM alpine:3.12 AS runner

COPY --from=organizer /out/final .
RUN cmake --install build --config Release

ENTRYPOINT [ "program" ]
