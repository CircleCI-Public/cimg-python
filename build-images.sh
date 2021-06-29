#!/usr/bin/env bash

docker build --file 3.6/Dockerfile -t cimg/python:3.6.14  -t cimg/python:3.6 .
docker build --file 3.6/node/Dockerfile -t cimg/python:3.6.14-node  -t cimg/python:3.6-node .
docker build --file 3.6/browsers/Dockerfile -t cimg/python:3.6.14-browsers  -t cimg/python:3.6-browsers .
docker build --file 3.7/Dockerfile -t cimg/python:3.7.11  -t cimg/python:3.7 .
docker build --file 3.7/node/Dockerfile -t cimg/python:3.7.11-node  -t cimg/python:3.7-node .
docker build --file 3.7/browsers/Dockerfile -t cimg/python:3.7.11-browsers  -t cimg/python:3.7-browsers .
docker build --file 3.8/Dockerfile -t cimg/python:3.8.11  -t cimg/python:3.8 .
docker build --file 3.8/node/Dockerfile -t cimg/python:3.8.11-node  -t cimg/python:3.8-node .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.11-browsers  -t cimg/python:3.8-browsers .
docker build --file 3.9/Dockerfile -t cimg/python:3.9.6  -t cimg/python:3.9 .
docker build --file 3.9/node/Dockerfile -t cimg/python:3.9.6-node  -t cimg/python:3.9-node .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.6-browsers  -t cimg/python:3.9-browsers .
