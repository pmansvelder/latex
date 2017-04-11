## R.6  Fallback
Login op de database
  oracle$ . oraenv
  ORACLE_SID = [oracle] ? <sid>

  oracle$ cd $RELEASE/<component>/vostools-deploy/bin
  oracle$ sqlplus <schema_naam>/<schema_password>

Voer het fallback script uit om het schema compatibel te maken met de versie 
<versienr>
  SQL> @../../db/<component>_fallback_<versienr>.sql <logdirectory met 
schrijfrechten> <tablespace_dat> <tablespace_idx>

Er wordt gelogd naar <component>_fallback_<versienr>_<datumtijd>.log