foo=$(impdp admin/${db_pwd}@${db_name}_high directory=data_pump_dir dumpfile=dp_STTables_20200313.dmp parallel=1 full=y logfile=ATPJTSImport.log)
