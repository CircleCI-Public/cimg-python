#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.7/Dockerfile -t cimg/python:3.7.14 -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.14-node -t cimg/python:3.7-node .
docker build --file 3.7/browsers/Dockerfile -t cimg/python:3.7.14-browsers -t cimg/python:3.7-browsers .
docker build --file 3.8/Dockerfile -t cimg/python:3.8.14 -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.14-node -t cimg/python:3.8-node .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.14-browsers -t cimg/python:3.8-browsers .
docker build --file 3.9/Dockerfile -t cimg/python:3.9.14 -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.14-node -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.14-browsers -t cimg/python:3.9-browsers .
docker build --file 3.10/Dockerfile -t cimg/python:3.10.7 -t cimg/python:3.10 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.7-node -t cimg/python:3.10-node .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.7-browsers -t cimg/python:3.10-browsers .
