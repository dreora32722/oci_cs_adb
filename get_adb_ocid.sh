#!/bin/bash

if [ -z "$ocid_comp" ] || [ -z "$db_name" ]
then
  echo "Error: missing variable definitions"
  exit 1
fi

# Get ADB OCID
adb_id=$(oci db autonomous-database list -c ${ocid_comp} --query "data [?\"db-name\"=='${db_name}'] | [0].id" --raw-output)

echo "DB Name/OCID for ATP: " ${db_name} / ${adb_id}