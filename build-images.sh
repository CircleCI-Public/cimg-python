#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.9/Dockerfile -t cimg/python:3.9.17-3.8.17-3.7.17- -t cimg/python:3.9 --platform linux/amd64 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.17-3.8.17-3.7.17--node -t cimg/python:3.9-node --platform linux/amd64 .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.17-3.8.17-3.7.17--browsers -t cimg/python:3.9-browsers --platform linux/amd64 .
