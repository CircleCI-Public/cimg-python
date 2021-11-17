#!/usr/bin/env bash

docker build --file 3.9/Dockerfile -t cimg/python:3.9.9  -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.9-node  -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.9-browsers  -t cimg/python:3.9-browsers .
