#!/usr/bin/env bash

docker build --file 2.7/browsers/Dockerfile -t cimg/python:2.7.18-browsers  -t cimg/python:2.7-browsers .
docker build --file 3.5/browsers/Dockerfile -t cimg/python:3.5.10-browsers  -t cimg/python:3.5-browsers .
docker build --file 3.6/browsers/Dockerfile -t cimg/python:3.6.12-browsers  -t cimg/python:3.6-browsers .
docker build --file 3.7/browsers/Dockerfile -t cimg/python:3.7.9-browsers  -t cimg/python:3.7-browsers .
docker build --file 3.8/browsers/Dockerfile -t cimg/python:3.8.6-browsers  -t cimg/python:3.8-browsers .
docker build --file 3.9/browsers/Dockerfile -t cimg/python:3.9.0-browsers  -t cimg/python:3.9-browsers .
