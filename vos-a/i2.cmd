## I.2	Back-up database
Login op de database
  oracle$ . oraenv
  ORACLE_SID = [oracle] ? <sid>
Het commando voor de backup is voor elk component:
  oracle$ expdp <schema_naam>/<schema_password> dumpfile=expdp_<schema_naam>.dmp 
logfile=expdp_<schema_naam>.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL

Van sommige versies moet de database back-up langere tijd bewaard worden. Deze 
back-up wordt dan gebruikt voor een rollback, voorafgaand aan de installatietest 
voor productie. Als dit het geval is, geef de logfile dan een naam met bijvoorbeeld 
de datum erin, zodat deze niet meer overschreven wordt.

Hieronder is het commando voor de afzonderlijke componenten met ingevulde 
placeholder:
  oracle$ expdp VOS_OWNER/VOS dumpfile=expdp_VOS_OWNER.dmp 
logfile=expdp_VOS_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp BUS_OWNER/BUS dumpfile=expdp_BUS_OWNER.dmp 
logfile=expdp_BUS_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp PLN_OWNER/PLN dumpfile=expdp_PLN_OWNER.dmp 
logfile=expdp_PLN_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp BGS_OWNER/BGS dumpfile=expdp_BGS_OWNER.dmp 
logfile=expdp_BGS_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp ICS_OWNER/ICS dumpfile=expdp_ICS_OWNER.dmp 
logfile=expdp_ICS_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp UIS_OWNER/UIS dumpfile=expdp_UIS_OWNER.dmp 
logfile=expdp_UIS_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp TDR_OWNER/TDR dumpfile=expdp_TDR_OWNER.dmp 
logfile=expdp_TDR_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL
  oracle$ expdp VOSEXT_OWNER/VOSEXT dumpfile=expdp_VOSEXT_OWNER.dmp 
logfile=expdp_VOSEXT_OWNER.log directory=VOS_DUMP reuse_dumpfiles=Y compression=ALL

Als dit fout gaat terwijl de dump directory wel bestaat moeten de grants nog 
toegekend worden aan de schema's
  oracle$ sqlplus / as sysdba
  SQL> GRANT READ, WRITE ON DIRECTORY VOS_DUMP TO <schema_naam>;
  SQL> exit

