#!/bin/bash

# Get Compartment OCID
ocid_comp=$(oci iam compartment list --query "data [?\"name\"=='${comp_name}'] | [0].id" --raw-output)
