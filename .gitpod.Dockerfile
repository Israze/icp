FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl build-essential libssl-dev pkg-config cmake nodejs npm && \
    rm -rf /var/lib/apt/lists/*

# Install DFINITY SDK
RUN curl -o- https://sdk.dfinity.org/install.sh | bash

# Add DFX to PATH
ENV PATH="/root/bin:${PATH}"
