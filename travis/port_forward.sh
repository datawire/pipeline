#!/usr/bin/env bash
set -euxo pipefail

#kubectl port-forward $(kubectl get pod -l app=qotm -o jsonpath='{.items[0].metadata.name}') 5000:5000 &
