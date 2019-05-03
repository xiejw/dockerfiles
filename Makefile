DOCKERFILE_DIR=dockerfiles

build_tex:
	docker build -t xiejw/tex -f dockerfiles/Dockerfile.tex .

run_tex:
	docker run --rm -ti -v `pwd`:/source xiejw/tex bash

build_swift:
	docker build -t xiejw/swift -f ${DOCKERFILE_DIR}/Dockerfile.swift .

run_swift:
	# Flag --privileged is required for swift (not swiftc).
	docker run --rm -ti --privileged -v `pwd`:/workdir --hostname docker xiejw/swift bash

build_ubuntu:
	docker build -t xiejw/ubuntu -f ${DOCKERFILE_DIR}/Dockerfile.ubuntu .

push_ubuntu:
	docker push xiejw/ubuntu
