#!/usr/bin/env bash
set -euo pipefail

# List all pods across namespaces sorted by container restart count.
# Useful for spotting crash-looping workloads during incident triage.

kubectl get pods -A -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.metadata.namespace}{"\t"}{.status.containerStatuses[0].restartCount}{"\n"}{end}' | sort -k3 -n
