#!/usr/bin/env bash

sleep 10s
curl -4v "http://127.0.0.1:5000/"

echo $?
echo "Simulated Tests Ran!"
