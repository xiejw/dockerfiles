DOCKERFILE_DIR=dockerfiles

# {{{1 Base Images
xiejw/baseimage:
	docker build -t xiejw/baseimage -f ${DOCKERFILE_DIR}/Dockerfile.debian .

# {{{1 Other Dockers
#
# - xiejw/tex
# - xiejw/clang-format
# - xiejw/llvm-clang
#
# - xiejw/mp3tag
# - xiejw/mpi
#
# Note: If $@ is xiejw/abc, then $(@F) is abc.
#
# Note: Setting Docker context as `assets` to avoid large file transfers.
#
xiejw/%:
	docker build -t $@ -f ${DOCKERFILE_DIR}/Dockerfile.$(@F) assets

