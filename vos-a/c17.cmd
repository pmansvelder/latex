## C.17  Database jobs controleren
Omschrijving	Controleer of alle database jobs zijn afgerond. Lopende jobs blokkeren 
bijvoorbeeld een succesvolle rollback.
Log in op de database als sysdba
  oracle$ . oraenv
  ORACLE_SID = [oracle] ? <sid>
  oracle$ sqlplus / as sysdba

Verbeter de output
  SQL> set lin 300
  SQL> set pagesize 50
  
Vraag de status op van alle procedures
  SQL> select owner, job_name, state, last_start_date, next_run_date from dba_scheduler_jobs
   where state = 'RUNNING';

Er mag geen job zijn met state RUNNING. Normaal gesproken zullen er overdag geen jobs RUNNING 
mogen zijn. Nachtelijke schoningsjobs zullen normaal gesproken de installatie niet verstoren. 
Wanneer er jobs zijn met state RUNNING, moet de installatie uitgesteld worden tot deze jobs 
klaar zijn. Wanneer de last_start_date langer geleden is, is de betreffende job waarschijnlijk 
vastgelopen en moet hij handmatig gestopt worden door een DBA. 
Let op: kijk ook naar jobs die op het punt staan te starten binnen het installatie window!

Sluit SQLPlus af
  SQL> exit

Indien vanuit de root-user naar de oracle-user is gewisseld, wordt weer root-user:
  oracle$ exit
