## C.5	Controleer status Weblogic servers
Deze stap kan handmatig of via script uitgevoerd worden

Ga naar de vostools-platform/bin directory in de   n van de componenten.
  weblogic$ ./run.sh checkWeblogic.py -d $PLATFORMCONF --servers

Alle servers dienen State 'RUNNING' en Health 'OK' te hebben. Er staan geen 
VOS-gerelateerde zaken in de restart of unactivated changes lijst. Indien van 
toepassing moeten er managed servers herstart worden.

HANDMATIG
1.	Log in op de beheerapplicatie van Weblogic (zie Omgeving 1)
2.	Navigeer naar:
 	Environment
 	Servers
3.	Alle servers dienen State 'RUNNING' en Health 'OK' te hebben.
4.	Navigeer naar:
 	View changes and restarts
 	Restart Checklist
5.	Geen van de managedservers van de VOS componenten staat in de restart list. 
Als dat wel het geval is deze servers herstarten.

