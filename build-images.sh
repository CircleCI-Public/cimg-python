#!/usr/bin/env bash

docker build --file 3.6/Dockerfile -t cimg/python:3.6.10  -t cimg/python:3.6 .
docker build --file 3.6/node/Dockerfile -t cimg/python:3.6.10-node  -t cimg/python:3.6-node .
