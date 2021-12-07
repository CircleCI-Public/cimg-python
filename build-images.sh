#!/usr/bin/env bash

docker build --file 3.10/Dockerfile -t cimg/python:3.10.1  -t cimg/python:3.10 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.1-node  -t cimg/python:3.10-node .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.1-browsers  -t cimg/python:3.10-browsers .
