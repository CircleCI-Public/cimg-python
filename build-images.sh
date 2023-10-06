#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.11/Dockerfile -t cimg/python:3.11.6 -t cimg/python:3.11 --platform linux/amd64 .
docker build --file 3.11/node/Dockerfile -t cimg/python:3.11.6-node -t cimg/python:3.11-node --platform linux/amd64 .
docker build --file 3.11/browsers/Dockerfile -t cimg/python:3.11.6-browsers -t cimg/python:3.11-browsers --platform linux/amd64 .
docker build --file 3.12/Dockerfile -t cimg/python:3.12.0 -t cimg/python:3.12 --platform linux/amd64 .
docker build --file 3.12/node/Dockerfile -t cimg/python:3.12.0-node -t cimg/python:3.12-node --platform linux/amd64 .
docker build --file 3.12/browsers/Dockerfile -t cimg/python:3.12.0-browsers -t cimg/python:3.12-browsers --platform linux/amd64 .
