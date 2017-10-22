# docker-linux-rust: Docker containers for building Rust binaries for Linux

# ABOUT

These Docker containers help to automate compiling Rust applications for Linux, even from non-Linux hosts. We provide example containers for building Rust binaries targeting GNU glibc Linux, as well as musl Linux.

# DOCKERHUB

https://hub.docker.com/r/mcandre/rust/

# EXAMPLES

```console
$ docker run -v "$(pwd):/src" mcandre/rust:glibc sh -c "cd /src && rustc hello.rs && ./hello"
Hello World!

$ docker run -v "$(pwd):/src" mcandre/rust:musl sh -c "cd /src && rustc hello.rs && ./hello"
Hello World!
```

# REQUIREMENTS

* [Docker](https://www.docker.com)

Some Docker ports, such as for FreeBSD, may have trouble running non-glibc containers, such as musl containers. In this case, one can still run musl containers albeit from a virtual machine with GNU Linux + Docker installed.
