#!/usr/bin/env bash

docker build --file 3.8/Dockerfile -t cimg/python:3.8.2  -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.2-node  -t cimg/python:3.8-node .
