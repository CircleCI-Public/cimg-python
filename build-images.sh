#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.9/Dockerfile -t cimg/python:3.9.15 -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.15-node -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.15-browsers -t cimg/python:3.9-browsers .
