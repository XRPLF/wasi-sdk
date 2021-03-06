#!/usr/bin/env sh
set -e
docker build -t wasi-sdk-builder:latest .
docker run --mount type=bind,src=$PWD,target=/workspace -e NINJA_FLAGS=-v --workdir /workspace wasi-sdk-builder:latest make package
