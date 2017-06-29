#!/usr/bin/env bash

COMMIT_HASH=${COMMIT_HASH:?Variable COMMIT_HASH not set}
NAMESPACE="${NAMESPACE}-${COMMIT_HASH}"

kubectl delete namespace "${NAMESPACE}"
