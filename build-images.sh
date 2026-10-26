#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.15/Dockerfile -t cimg/python:3.15.2 -t cimg/python:3.15 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.15/node/Dockerfile -t cimg/python:3.15.2-node -t cimg/python:3.15-node --push .
docker buildx build --platform=linux/amd64 --file 3.15/browsers/Dockerfile -t cimg/python:3.15.2-browsers -t cimg/python:3.15-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.14/Dockerfile -t cimg/python:3.14.10 -t cimg/python:3.14 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.14/node/Dockerfile -t cimg/python:3.14.10-node -t cimg/python:3.14-node --push .
docker buildx build --platform=linux/amd64 --file 3.14/browsers/Dockerfile -t cimg/python:3.14.10-browsers -t cimg/python:3.14-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.13/Dockerfile -t cimg/python:3.13.18 -t cimg/python:3.13 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.13/node/Dockerfile -t cimg/python:3.13.18-node -t cimg/python:3.13-node --push .
docker buildx build --platform=linux/amd64 --file 3.13/browsers/Dockerfile -t cimg/python:3.13.18-browsers -t cimg/python:3.13-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.12/Dockerfile -t cimg/python:3.12.16 -t cimg/python:3.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.12/node/Dockerfile -t cimg/python:3.12.16-node -t cimg/python:3.12-node --push .
docker buildx build --platform=linux/amd64 --file 3.12/browsers/Dockerfile -t cimg/python:3.12.16-browsers -t cimg/python:3.12-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.11/Dockerfile -t cimg/python:3.11.18 -t cimg/python:3.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.11/node/Dockerfile -t cimg/python:3.11.18-node -t cimg/python:3.11-node --push .
docker buildx build --platform=linux/amd64 --file 3.11/browsers/Dockerfile -t cimg/python:3.11.18-browsers -t cimg/python:3.11-browsers --push .
