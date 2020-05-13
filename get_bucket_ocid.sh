#!/bin/bash

if [ -z "$ocid_bucket" ]
then
  echo "Error: missing variable definitions"
  exit 1
fi

# Get Bucket_OCID
ocid_bucket=$(oci os bucket get --bucket-name ${bucket_name} "data | [0].id" --raw-output)
# xxxx--query "data [?\"name\"=='${comp_name}'] | [0].id" --raw-output)

echo "Bucket OCID: " ${ocid_bucket}
export ocid_bucket;
