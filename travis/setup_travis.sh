#!/usr/bin/env bash
set -euxo pipefail

mkdir -p ${TOOLS_DIR:?"ERROR: Variable TOOLS_DIR not set"}
mkdir -p ${HOME}/.kube

openssl aes-256-cbc -K $encrypted_83ffded4ef39_key -iv $encrypted_83ffded4ef39_iv -in kubeconfig.enc -out ${HOME}/.kube/config -d
