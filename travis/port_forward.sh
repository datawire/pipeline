#!/usr/bin/env bash
set -euxo pipefail

COMMIT_HASH=${COMMIT_HASH:?Variable COMMIT_HASH not set}
NAMESPACE="${NAMESPACE}-${COMMIT_HASH}"

kubectl port-forward --namespace=${NAMESPACE} $(kubectl get pod --namespace=${NAMESPACE} -l app=qotm -o jsonpath='{.items[0].metadata.name}') 5000:5000 &
