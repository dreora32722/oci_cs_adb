#!/bin/bash

# Set env variables
export comp_name=<Name of the compartment for the ADB>
export db_pwd=<Strong password e.g. the ADMIN password for ADB>
export db_name=<Name of the ADB>
export display_name=${db_name}
export wallet_file=${db_name}
export wallet_pwd=${db_pwd}
export TNS_ADMIN={$HOME}/network/admin
export conn_string=${db_name}_LOW
