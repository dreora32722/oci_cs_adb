#!/bin/bash

if [ -z "$TNS_ADMIN" ] || [ -z "$adb_id" ] || [ -z "$wallet_pwd" ] || [ -z "$wallet_file" ]
then
  echo "Error: missing variable definitions"
  exit 1
fi

# Create network/admin directory and get the wallet
mkdir -p ${TNS_ADMIN}

# Get the wallet
oci db autonomous-database generate-wallet --autonomous-database-id ${adb_id} --password ${wallet_pwd} --file ${TNS_ADMIN}/${wallet_file}.zip; 
unzip -d ${TNS_ADMIN} ${TNS_ADMIN}/${wallet_file}.zip