#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.10/Dockerfile -t cimg/python:3.10.10 -t cimg/python:3.10 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.10-node -t cimg/python:3.10-node .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.10-browsers -t cimg/python:3.10-browsers .
docker build --file 3.11/Dockerfile -t cimg/python:3.11.2 -t cimg/python:3.11 .
docker build --file 3.11/node/Dockerfile -t cimg/python:3.11.2-node -t cimg/python:3.11-node .
docker build --file 3.11/browsers/Dockerfile -t cimg/python:3.11.2-browsers -t cimg/python:3.11-browsers .
