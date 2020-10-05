#!/usr/bin/env bash

docker build --file 3.9/Dockerfile -t cimg/python:3.9.0  -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.0-node  -t cimg/python:3.9-node .
