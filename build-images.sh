#!/usr/bin/env bash

docker build --file 3.7/Dockerfile -t cimg/python:3.7.7  -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.7-node  -t cimg/python:3.7-node .
