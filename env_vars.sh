#!/bin/bash

# Set env variables
export comp_name=
echo "DB Password :" ; read -s db_pwd; export db_pwd
#`export db_pwd=<Strong password e.g. the ADMIN password for ADB>
export db_name=
export display_name=${db_name}
export wallet_file=${db_name}
export wallet_pwd=${db_pwd}
export TNS_ADMIN={$HOME}/network/admin
export conn_string=${db_name}_LOW
