#!/usr/bin/env sh

set -xeu

CLUSTER_ID=$(krucible create cluster --name "$CLUSTER_DISPLAY_NAME" -duration "$CLUSTER_DURATION" --configure-kubectl)
echo "::set-output name=cluster-id::$CLUSTER_ID"
chmod +r "$HOME/.kube/config"
