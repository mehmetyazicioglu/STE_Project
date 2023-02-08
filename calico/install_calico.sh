#! /bin/bash

set -e

CALICO_VERSION="v3.22.3"

helm repo add projectcalico https://docs.projectcalico.org/charts
helm upgrade --kubeconfig --install --atomic --wait --timeout 10m --debug -n kube-system -f files/calico-operator-values.yaml calico projectcalico/tigera-operator --version $CALICO_VERSION
sleep 10
# Install calico configuration
kubectl  apply -f files/calico-config.yaml

