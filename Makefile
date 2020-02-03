DOCKERFILE_DIR=dockerfiles

# {{{1 Base Images
xiejw/baseimage:
	docker build -t xiejw/baseimage -f ${DOCKERFILE_DIR}/Dockerfile.debian .

# {{{1 Other Dockers
# - xiejw/ubuntu
# - xiejw/tex
# - xiejw/mp3Tag
# - xiejw/clang-Format
# - xiejw/ghc           :: Haskell
# - xiejw/pandoc
#
# Note: If $@ is xiejw/abc, then $(@F) is abc.
xiejw/%:
	docker build -t $@ -f ${DOCKERFILE_DIR}/Dockerfile.$(@F) .

