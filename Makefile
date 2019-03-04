DOCKERFILE_DIR=dockerfiles

build_swift:
	docker build -t xiejw/swift -f ${DOCKERFILE_DIR}/Dockerfile.swift .

run_swift:
	# Flag --privileged is required for swift (not swiftc).
	docker run --rm -ti --privileged -v `pwd`:/workdir --hostname docker xiejw/swift bash
