# vim: filetype=dockerfile

FROM ubuntu:18.04

# Defines time zone.
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget clang libpython3.6-dev libblocksruntime-dev libxml2 libbsd-dev libcurl4 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG SWIFT_DOWNLOAD_LINK=https://storage.googleapis.com/s4tf-kokoro-artifact-testing/latest/swift-tensorflow-DEVELOPMENT-ubuntu18.04.tar.gz

RUN wget --no-check-certificate $SWIFT_DOWNLOAD_LINK \
    && tar xvf swift*.tar.gz \
    && rm -f swift*.tar.gz

WORKDIR /workdir

CMD ["bash"]
