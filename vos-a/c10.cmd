## C.10	Controle TIBCO Topics en Queues
Deze stap kan handmatig of via script uitgevoerd worden

VIA SCRIPT
Ga naar de vostools-platform/bin directory in de   n van de componenten.
  weblogic$ ./run.sh checkJMS.py -d $PLATFORMCONF --destinations

1.	Controleer of Queues voor componenten BUS, UIS, PLN en VOS bestaan.
2.	Controleer of Topics voor componenten BGS, ICS, BUS, UIS en PLN bestaan
3.	Verifieer dat er geen pending messages zijn op de queues gevonden onder 1 en 
2.
4.	Controleer of CS Topics voor VOS bestaan

HANDMATIG
1.	Log in op de beheerapplicatie van Tibco (zie Omgeving 3)
2.	Navigeer naar:
 	Application Management
 	All Service Instances
3.	Navigeer naar de actieve instantie op port 7226
4.	Controleer of Queues voor componenten BUS, UIS, PLN, TDR en VOS bestaan
5.	Controleer of Topics voor componenten BGS, ICS, BUS, UIS, PLN en VOS bestaan
6.	Verifieer dat er geen pending messages zijn op de queues gevonden onder 4.
7.	Navigeer naar de actieve instantie op port 7228
8.	Controleer of Topics voor VOS bestaan

