#!/usr/bin/env bash

COMMIT_HASH=${COMMIT_HASH:?Variable COMMIT_HASH not set}

mkdir -p kubernetes/staging
mkdir -p kubernetes/production

cp -R kubernetes/templates/. kubernetes/staging

# Staging
sed -i "s|__namespace__|${NAMESPACE}|g" kubernetes/staging/service.yaml

sed -i "s|__namespace__|${NAMESPACE}|g" kubernetes/staging/deployment.yaml
sed -i "s|__container_image_name__|${DOCKER_IMAGE}|g" kubernetes/staging/deployment.yaml

# Production
sed -i "s|__namespace__|${NAMESPACE}|g" kubernetes/production/service.yaml

sed -i "s|__namespace__|${NAMESPACE}|g" kubernetes/production/deployment.yaml
sed -i "s|__container_image_name__|${DOCKER_IMAGE}|g" kubernetes/production/deployment.yaml
