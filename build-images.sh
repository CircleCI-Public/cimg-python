#!/usr/bin/env bash

docker build --file 3.8/Dockerfile -t cimg/python:3.8.11  -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.11-node  -t cimg/python:3.8-node .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.11-browsers  -t cimg/python:3.8-browsers .
