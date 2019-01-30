
build_swift:
	docker build -t xiejw/swift -f Dockerfile.swift .

run_swift:
	docker run --rm -ti --privileged ${ARGS} xiejw/swift bash
