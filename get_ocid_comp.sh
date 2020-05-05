#!/bin/bash

if [ -z "$comp_name" ]
then
  echo "Error: missing variable definitions"
  exit 1
fi

# Get Compartment OCID
ocid_comp=$(oci iam compartment list --compartment-id-in-subtree true --query "data [?\"name\"=='${comp_name}'] | [0].id" --raw-output)

echo "Comapartment OCID: " ${ocid_comp}
