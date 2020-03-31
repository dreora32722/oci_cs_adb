#!/bin/bash

if [ -z "$TNS_ADMIN" ]
then
  echo "Error: missing variable definitions"
  exit 1
fi

cp $TNS_ADMIN/sqlnet.ora $TNS_ADMIN/sqlnet.ora.bkp
sed -i -e "s|?/network/admin|${TNS_ADMIN}|g" ${TNS_ADMIN}/sqlnet.ora 