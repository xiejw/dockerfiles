# vim: filetype=dockerfile

FROM xiejw/baseimage

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget clang make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV CC /usr/bin/clang

RUN mkdir /tmpworkdir \
    && cd /tmpworkdir \
    && wget --no-check-certificate http://download.icu-project.org/files/icu4c/55.1/icu4c-55_1-src.tgz \
    && tar xzvf icu4c-*.tgz \
    && cd icu/source/ \
    && ./configure \
    && make \
    && make install \
    && cd / \
    && rm -rf /tmpworkdir

RUN mkdir /tmpworkdir \
    && cd /tmpworkdir \
    && wget --no-check-certificate https://swift.org/builds/swift-4.2.1-release/ubuntu1604/swift-4.2.1-RELEASE/swift-4.2.1-RELEASE-ubuntu16.04.tar.gz \
    && tar xzvf swift*.tar.gz  -C / --strip-components 1 \
    && cd / \
    && rm -rf /tmpworkdir

# Necessary for Swift Runtime.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       libxml2 \
       tzdata \
       libedit2 \
       libpython2.7 \
       libncurses5 \
       libcurl3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workdir

CMD ["bash"]
