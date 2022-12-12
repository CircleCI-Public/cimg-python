#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.7/Dockerfile -t cimg/python:3.7.16 -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.16-node -t cimg/python:3.7-node .
docker build --file 3.7/browsers/Dockerfile -t cimg/python:3.7.16-browsers -t cimg/python:3.7-browsers .
docker build --file 3.8/Dockerfile -t cimg/python:3.8.16 -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.16-node -t cimg/python:3.8-node .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.16-browsers -t cimg/python:3.8-browsers .
docker build --file 3.9/Dockerfile -t cimg/python:3.9.16 -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.16-node -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.16-browsers -t cimg/python:3.9-browsers .
docker build --file 3.10/Dockerfile -t cimg/python:3.10.9 -t cimg/python:3.10 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.9-node -t cimg/python:3.10-node .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.9-browsers -t cimg/python:3.10-browsers .
docker build --file 3.11/Dockerfile -t cimg/python:3.11.1 -t cimg/python:3.11 .
docker build --file 3.11/node/Dockerfile -t cimg/python:3.11.1-node -t cimg/python:3.11-node .
docker build --file 3.11/browsers/Dockerfile -t cimg/python:3.11.1-browsers -t cimg/python:3.11-browsers .
