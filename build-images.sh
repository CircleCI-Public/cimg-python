#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.15/Dockerfile -t cimg/python:3.15.0rc1 -t cimg/python:3.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.15/node/Dockerfile -t cimg/python:3.15.0rc1-node -t cimg/python:3.15-node --push .
docker buildx build --platform=linux/amd64 --file 3.15/browsers/Dockerfile -t cimg/python:3.15.0rc1-browsers -t cimg/python:3.15-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.14/Dockerfile -t cimg/python:3.14.7 -t cimg/python:3.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.14/node/Dockerfile -t cimg/python:3.14.7-node -t cimg/python:3.14-node --push .
docker buildx build --platform=linux/amd64 --file 3.14/browsers/Dockerfile -t cimg/python:3.14.7-browsers -t cimg/python:3.14-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.13/Dockerfile -t cimg/python:3.13.15 -t cimg/python:3.13 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.13/node/Dockerfile -t cimg/python:3.13.15-node -t cimg/python:3.13-node --push .
docker buildx build --platform=linux/amd64 --file 3.13/browsers/Dockerfile -t cimg/python:3.13.15-browsers -t cimg/python:3.13-browsers --push .
