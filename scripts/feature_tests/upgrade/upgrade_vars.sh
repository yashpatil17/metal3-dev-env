#!/bin/bash
set -eux

# Folder created for specific capi release when running
# ${CLUSTER_API_REPO}/cmd/clusterctl/hack/create-local-repository.py
# For CAPI release v0.3.12, the folder v0.3.8 is created

export CAPIRELEASE_HARDCODED="v0.3.8"

function get_capm3_latest() {
    clusterctl upgrade plan | grep infrastructure-metal3 | awk 'NR == 1 {print $5}'
}

export CAPM3RELEASE="v0.4.0"
CAPM3_REL_TO_VERSION="$(get_capm3_latest)" || true
export CAPM3_REL_TO_VERSION

export CAPIRELEASE="v0.3.15"
export CAPI_REL_TO_VERSION="v0.3.16"

export FROM_K8S_VERSION="v1.21.1"
export KUBERNETES_VERSION=${FROM_K8S_VERSION}
export UPGRADED_K8S_VERSION="v1.21.2"

export NUM_OF_MASTER_REPLICAS="3"
export NUM_OF_WORKER_REPLICAS="1"
