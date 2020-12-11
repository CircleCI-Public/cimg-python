#!/usr/bin/env bash

docker build --file 3.9/Dockerfile -t cimg/python:3.9.1  -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.1-node  -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.1-browsers  -t cimg/python:3.9-browsers .
