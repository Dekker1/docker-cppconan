FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      cmake \
      gcc \
      git \
      g++ \
      make \
      python3 \
      python3-pip \
      python3-venv \
      subversion \
      zlib1g \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir setuptools \
    &&  pip3 install --no-cache-dir conan