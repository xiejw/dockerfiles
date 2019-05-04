DOCKERFILE_DIR=dockerfiles

# {{{1 TeX
build_tex:
	docker build -t xiejw/tex -f dockerfiles/Dockerfile.tex .

run_tex:
	docker run --rm -ti -v `pwd`:/source xiejw/tex bash

# {{{1 Swift
build_swift:
	docker build -t xiejw/swift -f ${DOCKERFILE_DIR}/Dockerfile.swift .

run_swift:
	# Flag --privileged is required for swift (not swiftc).
	docker run --rm -ti --privileged -v `pwd`:/workdir --hostname docker xiejw/swift bash

# {{{1 Ubuntu
build_ubuntu:
	docker build -t xiejw/ubuntu -f ${DOCKERFILE_DIR}/Dockerfile.ubuntu .

push_ubuntu:
	docker push xiejw/ubuntu

# {{{1 Mp3Tag
build_mp3tag:
	docker build -t xiejw/mp3tag -f ${DOCKERFILE_DIR}/Dockerfile.mp3tag .
