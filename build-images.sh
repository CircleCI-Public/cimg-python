#!/usr/bin/env bash

docker build --file 3.5/Dockerfile -t cimg/python:3.5.10  -t cimg/python:3.5 .
docker build --file 3.5/node/Dockerfile -t cimg/python:3.5.10-node  -t cimg/python:3.5-node .
