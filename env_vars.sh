#!/bin/bash

#
# Adjust the values below as required to match your compartment name, database name, bucket_name and datafile to load
#

export comp_name=workshop                               # The name of the comapartment where ADB is going to live
export db_name=ADWJTS                                   # Name of the database
echo "DB Password :" ; read -s db_pwd; export db_pwd    # Read the password for the ADB.                                                     
export display_name=${db_name}                          # The display name of the ADB instance
export wallet_file=${db_name}                           # The filename of the Wallet
export wallet_pwd=${db_pwd}                             # The password for the Wallet
export TNS_ADMIN=${HOME}/network/admin                  # TNS_ADMIN
export conn_string=${db_name}_medium                    # Connection string for testing
export bucket_name=datafile-bucket                      # The name of the Object Storage Bucket
export ocid_bucket=variablenotset                       # The ocid for the Object Storage bucket
export tenancy_namespace=variablenotset # The tenancy namespace required for some Object Storage operations
export datafile_to_load=dp_STTables_20200313.dmp        # Adjust as required

# NOTE: Password must be 12 to 30 characters and contain at least one uppercase letter, one lowercase letter, 
# and one number. The password cannot contain the double quote (") character or the username "admin".

echo "Compartment Name :" ${comp_name}
echo "Database Name    :" ${db_name}
echo "Database Password:" ${db_pwd}
echo "TNS Conn String  :" ${conn_string}
echo "Object Storage Bucket Name :" ${bucket_name}
echo "Bucket OCID :" ${ocid_bucket}
echo "Tenancy Namespace :" ${tenancy_namespace}
echo "datafile_to_load :" ${datafile_to_load}
