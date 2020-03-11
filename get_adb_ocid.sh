#!/bin/bash

# Get ADB OCID
adb_id=$(oci db autonomous-database list -c ${ocid_comp} --query "data [?\"db-name\"=='${db_name}'] | [0].id" --raw-output)