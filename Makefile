all: docker-rust-glibc docker-rust-musl

docker-rust-glibc: glibc.Dockerfile
	docker build -f glibc.Dockerfile -t mcandre/rust:glibc .

docker-rust-musl: musl.Dockerfile
	docker build -f musl.Dockerfile -t mcandre/rust:musl .

publish: publish-rust-glibc publish-rust-musl

publish-rust-glibc:
	docker push mcandre/rust:glibc

publish-rust-musl:
	docker push mcandre/rust:musl
