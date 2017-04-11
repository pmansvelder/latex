## I.12  Controleren of het snapshot mechanisme op de opleidingsomgeving nog goed 
werkt
  oracle$ . oraenv
Voer het SID in
  oracle$ sqlplus <schema_naam>/<schema_password>  
  
Controleer of de referentiedatum de datum van vandaag is.
  SQL> SELECT value FROM SCO_CONFIG_ITEM WHERE 
key='kopieerinstelling.referentie_datum';
  
Controleer of jobs van gisteren de status SUCCEEDED hebben
  SQL> SELECT owner, job_name, log_date, status, error#, actual_start_date, 
run_duration, additional_info FROM user_scheduler_job_run_details WHERE 
actual_start_date > sysdate - 2;

Sluit SQLPlus af
  SQL> exit

