#!/bin/bash

if [ -z "$ocid_comp" ] || [ -z "$db_name"]
then
  echo "Error: missing variable definitions"
  exit 1
fi


# Get connection string
db_conn=$(oci db autonomous-database list -c ${ocid_comp} --query "data [?\"db-name\"=='${db_name}'] | [0].\"connection-strings\".low" --raw-output)