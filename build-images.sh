#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.10/Dockerfile -t cimg/python:3.10.6 -t cimg/python:3.10 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.6-node -t cimg/python:3.10-node .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.6-browsers -t cimg/python:3.10-browsers .
