#!/bin/sh

helm repo add argo https://argoproj.github.io/argo-helm
helm install argo argo/argo-workflows --namespace argo --create-namespace \
    --set server.extraArgs[0]="--auth-mode=server" \
    -f tools/local/scripts/values.yaml
