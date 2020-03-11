#!/bin/bash

# Get connection string
db_conn=$(oci db autonomous-database list -c ${ocid_comp} --query "data [?\"db-name\"=='${db_name}'] | [0].\"connection-strings\".low" --raw-output)