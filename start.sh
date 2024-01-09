#!/bin/bash

# Build the Docker image
docker build -t lastest_tensorflow . && \
docker-compose up -d 