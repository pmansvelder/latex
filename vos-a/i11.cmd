## I.11  Controleren of de map vos_dump in de database bestaat
Er moet worden gecontroleerd of in de database de map "vos_dump" bestaat. Deze map 
moet voorkomen in de lijst na het uitvoeren van de volgende commando s.
  oracle$ . oraenv
Voer het SID in
  oracle$ sqlplus / as sysdba
  SQL> select * from dba_directories;
Als "vos_dump" niet in deze lijst voorkomt kan deze met de volgende commando s 
worden aangemaakt.
  SQL> create directory vos_dump as '/mnt/orabackup/vosdumps';
  SQL> GRANT READ, WRITE ON DIRECTORY VOS_DUMP TO <schema_naam>;
Verlaat SQL*Plus
  SQL> exit
  
