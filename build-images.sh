#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.7/Dockerfile -t cimg/python:3.7.13  -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.13-node  -t cimg/python:3.7-node .
docker build --file 3.7/browsers/Dockerfile -t cimg/python:3.7.13-browsers  -t cimg/python:3.7-browsers .
docker build --file 3.8/Dockerfile -t cimg/python:3.8.13  -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.13-node  -t cimg/python:3.8-node .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.13-browsers  -t cimg/python:3.8-browsers .
docker build --file 3.9/Dockerfile -t cimg/python:3.9.11  -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.11-node  -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.11-browsers  -t cimg/python:3.9-browsers .
