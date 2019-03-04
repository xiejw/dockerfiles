# Swift for Tensorflow Docker

See https://github.com/apple/swift/tree/tensorflow for details.

## Version

Last tested version: Development 2019-03-02.

## Usage

    cd workdir
    make -f ~/Workspace/dockerfiles/Makefile run_swift

## Build

    make build_swift
    docker push xiejw/swift

## Deployment (for General swift)

To deploy a swift binary in Debian, the steps are much simpler.

- Make sure your `swift` is compiled after
  https://github.com/apple/swift/pull/20793. Otherwise, the `libdispatch` does
  not have static library by default. Currently, only dev branch has that
  change.

- Compile the source code in release mode

        swiftc -static-stdlib -O <src> -o <binary>
        # Or
        swift build -c release -Xswiftc -static-stdlib

- Inside Dockerfile, install the library to avoid the complaining of
  `libatomic.so.1`.

        apt install libatomic1


