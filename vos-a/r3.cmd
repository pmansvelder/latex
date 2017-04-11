## R.3	Database rollback
Login op de database
  oracle$ . oraenv
  ORACLE_SID = [oracle] ? <sid>

  oracle$ cd $RELEASE/<component>/vostools-deploy/bin
  oracle$ sqlplus <schema_naam>/<schema_password>
Schoon het bestaande schema op
  SQL> @../../db/opschonen_schema.sql
  SQL> exit
Restore de dump
  oracle$ impdp <schema_naam>/<schema_password> directory=VOS_DUMP 
dumpfile=expdp_<schema_naam>.dmp logfile=impdp_<schema_naam>_restore.log

