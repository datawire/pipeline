#!/usr/bin/env bash

DOCKER_IMAGE=${DOCKER_IMAGE?:"Variable DOCKER_IMAGE not set."}

docker build -t ${DOCKER_IMAGE} .
