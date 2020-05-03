DOCKERFILE_DIR=dockerfiles

# {{{1 Base Images
xiejw/baseimage:
	docker build -t xiejw/baseimage -f ${DOCKERFILE_DIR}/Dockerfile.debian .

# {{{1 Other Dockers
#
# - xiejw/tex
# - xiejw/clang-Format
#
# - xiejw/ghc           :: Haskell
# - xiejw/mp3Tag
# - xiejw/pandoc
#
# Note: If $@ is xiejw/abc, then $(@F) is abc.
# Note: Seeting Docker context as `assets` to re-use cache.
xiejw/%:
	docker build -t $@ -f ${DOCKERFILE_DIR}/Dockerfile.$(@F) assets

