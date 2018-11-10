#!/usr/bin/env bash

version_arg=$1

docker build \
    -t kosprov/wait-on:latest \
    -t kosprov/wait-on:$version_arg \
    --build-arg WAIT_ON_VERSION=$version_arg \
    .