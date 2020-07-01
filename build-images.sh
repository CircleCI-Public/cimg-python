#!/usr/bin/env bash

docker build --file 2.7/Dockerfile -t cimg/python:2.7.18  -t cimg/python:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/python:2.7.18-node  -t cimg/python:2.7-node .
docker build --file 3.5/Dockerfile -t cimg/python:3.5.9  -t cimg/python:3.5 .
docker build --file 3.5/node/Dockerfile -t cimg/python:3.5.9-node  -t cimg/python:3.5-node .
docker build --file 3.6/Dockerfile -t cimg/python:3.6.10  -t cimg/python:3.6 .
docker build --file 3.6/node/Dockerfile -t cimg/python:3.6.10-node  -t cimg/python:3.6-node .
docker build --file 3.6/Dockerfile -t cimg/python:3.6.11  -t cimg/python:3.6 .
docker build --file 3.6/node/Dockerfile -t cimg/python:3.6.11-node  -t cimg/python:3.6-node .
docker build --file 3.7/Dockerfile -t cimg/python:3.7.7  -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.7-node  -t cimg/python:3.7-node .
docker build --file 3.7/Dockerfile -t cimg/python:3.7.8  -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.8-node  -t cimg/python:3.7-node .
docker build --file 3.8/Dockerfile -t cimg/python:3.8.2  -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.2-node  -t cimg/python:3.8-node .
docker build --file 3.8/Dockerfile -t cimg/python:3.8.3  -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.3-node  -t cimg/python:3.8-node .
