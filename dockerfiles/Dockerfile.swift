# vim: filetype=dockerfile

FROM xiejw/ubuntu

# Install dependencies required for Swift for TensorFlow.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget clang libpython3.6-dev libblocksruntime-dev libxml2 libbsd-dev libcurl4 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG SWIFT_DOWNLOAD_LINK=https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.3.1/rc1/swift-tensorflow-RELEASE-0.3.1-ubuntu18.04.tar.gz

RUN wget --no-check-certificate $SWIFT_DOWNLOAD_LINK \
    && tar xvf swift*.tar.gz \
    && rm -f swift*.tar.gz

WORKDIR /source

CMD ["bash"]
