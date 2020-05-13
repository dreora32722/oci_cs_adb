#!/bin/bash

if [ -z "$tenancy_namespace" ]
then
  echo "Error: missing variable definitions"
  exit 1
fi

# Get Compartment OCID
tenancy_namespace=$(oci os ns get | jq -r .data)
echo "Tenancy Namespace: " ${tenancy_namespace}
export tenancy_namespace;
