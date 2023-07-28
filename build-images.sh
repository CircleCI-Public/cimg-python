#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.11/Dockerfile -t cimg/python:3.11.4 -t cimg/python:3.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.11/node/Dockerfile -t cimg/python:3.11.4-node -t cimg/python:3.11-node --push .
docker buildx build --platform=linux/amd64 --file 3.11/browsers/Dockerfile -t cimg/python:3.11.4-browsers -t cimg/python:3.11-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.10/Dockerfile -t cimg/python:3.10.12 -t cimg/python:3.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.10/node/Dockerfile -t cimg/python:3.10.12-node -t cimg/python:3.10-node --push .
docker buildx build --platform=linux/amd64 --file 3.10/browsers/Dockerfile -t cimg/python:3.10.12-browsers -t cimg/python:3.10-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.9/Dockerfile -t cimg/python:3.9.17 -t cimg/python:3.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.9/node/Dockerfile -t cimg/python:3.9.17-node -t cimg/python:3.9-node --push .
docker buildx build --platform=linux/amd64 --file 3.9/browsers/Dockerfile -t cimg/python:3.9.17-browsers -t cimg/python:3.9-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.8/Dockerfile -t cimg/python:3.8.17 -t cimg/python:3.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.8/node/Dockerfile -t cimg/python:3.8.17-node -t cimg/python:3.8-node --push .
docker buildx build --platform=linux/amd64 --file 3.8/browsers/Dockerfile -t cimg/python:3.8.17-browsers -t cimg/python:3.8-browsers --push .
