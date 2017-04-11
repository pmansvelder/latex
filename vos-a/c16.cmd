## C.16	 Quartz Jobs controleren
Omschrijving	Controleer in de database de status van de Quartz Jobs van een 
component.
Log in  op de database
  oracle$ sqlplus <schema_naam>/<schema_password>

Update triggers met TRIGGER_STATE 'ERROR' naar 'WAITING'
  SQL> update QRTZ_TRIGGERS set TRIGGER_STATE='WAITING' where TRIGGER_STATE='ERROR';

Als er rows updated zijn moet er nog een commit uitgevoerd worden
  SQL> commit;

Sluit SQLPlus af
  SQL> exit
  
