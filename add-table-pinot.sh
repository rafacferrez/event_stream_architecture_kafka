#! /usr/bin/env bash

kubectl cp pinot_schema_configuration/ datastorage/pinot-controller-0:/opt/pinot
kubectl cp pinot_create_table.sh datastorage/pinot-controller-0:/opt/pinot

kubectl exec pinot-controller-0 -n datastorage -i -t -- bash
