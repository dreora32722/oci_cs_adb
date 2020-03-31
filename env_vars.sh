#!/bin/bash

export comp_name=                                       # The name of the comapartment where ADB is going to live
export db_name=                                         # Name of the database
echo "DB Password :" ; read -s db_pwd; export db_pwd    # Read the password for the ADB.                                                     
export display_name=${db_name}                          # The display name of the ADB instance
export wallet_file=${db_name}                           # The filename of the Wallet
export wallet_pwd=${db_pwd}                             # The passw ord for the Wallet
export TNS_ADMIN={$HOME}/network/admin                  # TNS_ADMIN
export conn_string=${db_name}_LOW                       # Connection string for testing

# NOTE: Password must be 12 to 30 characters and contain at least one uppercase letter, one lowercase letter, 
# and one number. The password cannot contain the double quote (") character or the username "admin".

echo "Compartment Name :" ${comp_name}
echo "Datbase Name     :" ${db_name}
echo "Database Password:" ${db_pwd}
