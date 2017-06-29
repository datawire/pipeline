#!/usr/bin/env bash
set -euxo pipefail

ps aux | grep kubectl
curl -v http://localhost:5000/ -4
