#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.9/Dockerfile -t cimg/python:3.9.19 -t cimg/python:3.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.9/node/Dockerfile -t cimg/python:3.9.19-node -t cimg/python:3.9-node --push .
docker buildx build --platform=linux/amd64 --file 3.9/browsers/Dockerfile -t cimg/python:3.9.19-browsers -t cimg/python:3.9-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.8/Dockerfile -t cimg/python:3.8.19 -t cimg/python:3.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.8/node/Dockerfile -t cimg/python:3.8.19-node -t cimg/python:3.8-node --push .
docker buildx build --platform=linux/amd64 --file 3.8/browsers/Dockerfile -t cimg/python:3.8.19-browsers -t cimg/python:3.8-browsers --push .
