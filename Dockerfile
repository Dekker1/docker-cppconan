FROM alpine:latest
RUN apk add --no-cache \
    bash \
    cmake \
    curl \
    git \
    g++ \
    make \
    perl \
    python3 \
    python3-dev \
    subversion \
    unzip \
    zlib-dev

RUN pip3 install --no-cache-dir setuptools \
    &&  pip3 install --no-cache-dir conan
