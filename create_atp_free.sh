#!/bin/bash

# Create ATP (Free)
oci db autonomous-database create --admin-password ${db_pwd} -c ${ocid_comp} --db-name ${db_name} --display-name ${db_name} --db-workload OLTP --is-free-tier true --cpu-core-count 1 --data-storage-size-in-tbs 1 
