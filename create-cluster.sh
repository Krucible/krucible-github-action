#!/usr/bin/env sh

set -xeu

CLUSTER_ID=$(krucible create cluster --display-name "$CLUSTER_DISPLAY_NAME" --cluster-duration "$CLUSTER_DURATION" --configure-kubectl 2> /dev/null)
echo "::set-output name=cluster-id::$CLUSTER_ID"
chmod +r "$HOME/.kube/config"
