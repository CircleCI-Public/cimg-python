#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.8/Dockerfile -t cimg/python:3.8.17-and-v3.7.17-and -t cimg/python:3.8 --platform linux/amd64 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.17-and-v3.7.17-and-node -t cimg/python:3.8-node --platform linux/amd64 .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.17-and-v3.7.17-and-browsers -t cimg/python:3.8-browsers --platform linux/amd64 .
