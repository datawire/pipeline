#!/usr/bin/env bash
set -euxo pipefail

ps aux | grep kubectl
curl -4 \
     -v \
     --connect-timeout 5 \
     --max-time 10 \
     --retry 5 \
     --retry-delay 0 \
     --retry-max-time 40 \
     "http://127.0.0.1:5000/"


