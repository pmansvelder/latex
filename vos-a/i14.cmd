## I.14  Snapshot verversen op de opleidingsomgeving
  oracle$ . oraenv
Voer het SID in
  oracle$ sqlplus <schema_naam>/<schema_password>  
  
Ververs het snapshot met de kopieer procedure
  SQL> exec <component>_kopieer_tabellen.ververs_snapshot 
  
Sluit SQLPlus af
  SQL> exit
  
