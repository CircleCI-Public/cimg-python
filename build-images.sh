#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.11/Dockerfile -t cimg/python:3.11.3 -t cimg/python:3.11 --platform linux/amd64 .
docker build --file 3.11/node/Dockerfile -t cimg/python:3.11.3-node -t cimg/python:3.11-node --platform linux/amd64 .
docker build --file 3.11/browsers/Dockerfile -t cimg/python:3.11.3-browsers -t cimg/python:3.11-browsers --platform linux/amd64 .
docker build --file 3.10/Dockerfile -t cimg/python:3.10.11 -t cimg/python:3.10 --platform linux/amd64 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.11-node -t cimg/python:3.10-node --platform linux/amd64 .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.11-browsers -t cimg/python:3.10-browsers --platform linux/amd64 .
