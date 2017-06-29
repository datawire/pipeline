#!/usr/bin/env bash

kubectl config use-context staging
kubectl apply -f kubernetes/staging

kubectl config use-context production
kubectl apply -f kubernetes/production
