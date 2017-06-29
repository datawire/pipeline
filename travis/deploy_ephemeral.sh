#!/usr/bin/env bash

DOCKER_IMAGE=${DOCKER_IMAGE:?Variable DOCKER_IMAGE not set}
TRAVIS_COMMIT=${TRAVIS_COMMIT:?Variable TRAVIS_COMMIT not set}
NAMESPACE="${NAMESPACE}-${TRAVIS_COMMIT}"

kubectl create namespace "${NAMESPACE}"

mkdir -p kubernetes/staging
cp -R kubernetes/templates/. kubernetes/staging

sed -i "s|__namespace__|${NAMESPACE}|g" kubernetes/staging/service.yaml

sed -i "s|__namespace__|${NAMESPACE}|g" kubernetes/staging/deployment.yaml
sed -i "s|__container_image_name__|${DOCKER_IMAGE}|g" kubernetes/staging/deployment.yaml

kubectl apply -f kubernetes/staging
