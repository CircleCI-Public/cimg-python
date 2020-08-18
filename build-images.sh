#!/usr/bin/env bash

docker build --file 3.6/Dockerfile -t cimg/python:3.6.12  -t cimg/python:3.6 .
docker build --file 3.6/node/Dockerfile -t cimg/python:3.6.12-node  -t cimg/python:3.6-node .
docker build --file 3.7/Dockerfile -t cimg/python:3.7.9  -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.9-node  -t cimg/python:3.7-node .
