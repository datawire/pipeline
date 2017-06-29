#!/usr/bin/env bash
set -euxo pipefail

ps aux | grep kubectl
sleep 10s
ps aux | grep kubectl
curl -4 \
     -v \
      "http://127.0.0.1:5000/"




