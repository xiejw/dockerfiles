DOCKERFILE_DIR=dockerfiles

# {{{1 TeX
build_tex:
	docker build -t xiejw/tex -f dockerfiles/Dockerfile.tex .

run_tex:
	docker run --rm -ti -v `pwd`:/source xiejw/tex bash

# {{{1 GHC/Haskell
build_ghc:
	docker build -t xiejw/ghc -f dockerfiles/Dockerfile.ghc .

# {{{1 Debian
build_debian:
	docker build -t xiejw/baseimage -f ${DOCKERFILE_DIR}/Dockerfile.debian .

# {{{1 Ubuntu
build_ubuntu:
	docker build -t xiejw/ubuntu -f ${DOCKERFILE_DIR}/Dockerfile.ubuntu .

# {{{1 Mp3Tag
build_mp3tag:
	docker build -t xiejw/mp3tag -f ${DOCKERFILE_DIR}/Dockerfile.mp3tag .

# {{{1 clang-Format
build_clang_format:
	docker build -t xiejw/clang-format -f dockerfiles/Dockerfile.clang-format .

