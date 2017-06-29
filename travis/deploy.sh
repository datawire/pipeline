#!/usr/bin/env bash

kubectl config use-context staging
kubectl apply -f kubernetes/staging

kubectl config use-context production
kubectl apply -f kubernetes/production

git add kubernetes/*

NOW=$(TZ=America/New_York date)

git commit -m "kubernetes manifests: $NOW [ci skip]"

echo "Pushing changes to upstream master"
git push upstream master
