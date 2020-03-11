#!/bin/bash

# Create network/admin directory and get the wallet
mkdir -p ${TNS_ADMIN}

# Get the wallet
oci db autonomous-database generate-wallet --autonomous-database-id ${adb_id} --password ${wallet_pwd} --file {$TNS_ADMIN}/${wallet_file}.zip; unzip {$TNS_ADMIN}/${wallet_file}.zip