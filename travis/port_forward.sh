#!/usr/bin/env bash
set -euxo pipefail

COMMIT_HASH=${COMMIT_HASH:?Variable COMMIT_HASH not set}
NAMESPACE="${NAMESPACE}-${COMMIT_HASH}"
POD="$(kubectl get pod --namespace=${NAMESPACE} -l app=qotm -o jsonpath='{.items[0].metadata.name}')"

echo "Found Pod $POD"
kubectl port-forward --namespace=${NAMESPACE} ${POD} 37563:5000 > /dev/null 2>&1 &
