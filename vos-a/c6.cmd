Deze stap kan handmatig of via script uitgevoerd worden

VIA SCRIPT
Ga naar de vostools-platform/bin directory in de één van de componenten.
  weblogic$ ./run.sh checkJMS.py -d $PLATFORMCONF --statusEMS

Controleer of er voor elk poortnummer twee servers zijn waarvan één actief (state: ACTIVE)
en één standby (state: FT_STANDBY).

HANDMATIG
1.	Log in op de beheerapplicatie van Tibco (zie Omgeving 3)
2.	Navigeer naar:
•	Application Management
•	All Service Instances
3.	Controleer of er voor elk poortnummer twee servers zijn waarvan één actief (state: Active) 
	en één standby (state: Standby). Klik op een instantie om de status te zien. 
	De instanties met de volgende poortnummers moeten worden gecontroleerd:
Poort	Server 1  Server 2
7224	Active	  Standby
7226	Standby	  Active
7228	Active	  Standby
