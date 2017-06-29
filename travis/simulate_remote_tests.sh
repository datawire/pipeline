#!/usr/bin/env bash
set -euxo pipefail

ps aux | grep kubectl
curl -4 -v http://localhost:37563/
