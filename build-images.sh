#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.8/Dockerfile -t cimg/python:3.8.17 -t cimg/python:3.8 --platform linux/amd64 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.17-node -t cimg/python:3.8-node --platform linux/amd64 .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.17-browsers -t cimg/python:3.8-browsers --platform linux/amd64 .
