#!/usr/bin/env bash

docker build --file 3.9/Dockerfile -t cimg/python:3.9.9  -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.9-node  -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.9-browsers  -t cimg/python:3.9-browsers .
docker build --file 3.10/Dockerfile -t cimg/python:3.10.0  -t cimg/python:3.10 .
docker build --file 3.10/node/Dockerfile -t cimg/python:3.10.0-node  -t cimg/python:3.10-node .
docker build --file 3.10/browsers/Dockerfile -t cimg/python:3.10.0-browsers  -t cimg/python:3.10-browsers .
