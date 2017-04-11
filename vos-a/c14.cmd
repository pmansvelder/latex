## C.14	 Controle koppeling met VMB

Omschrijving	Controleer of VOS uitvoeringsinformatie ontvangt van VMB

Controle 1 kan handmatig of via script uitgevoerd worden

VIA SCRIPT
Controle 1	De 6 verzend en ontvang queues van VMB en VOS bevatten geen pending 
berichten.

Ga naar de vostools-platform/bin directory in de   n van de componenten.
  weblogic$ ./run.sh checkJMS.py -d $PLATFORMCONF --koppelingVMB

Indien er pending berichten worden aangetroffen moet er gekeken worden of deze 
verwijderd kunnen/moeten worden.

HANDMATIG
Controle 1	De 6 verzend en ontvang queues van VMB en VOS bevatten geen pending 
berichten.
Dit zijn de queues:
-Van VOS naar VKL:
jms.receive.executiondata
jms.receive.infradata
jms.receive.scheduledata
-Van VKL naar VOS:
jms.send.executiondata
jms.send.infradata
jms.send.scheduledata
1.	Log in op de beheerapplicatie van Tibco (zie Omgeving 3)
2.	Navigeer naar:
 	Application Management
 	All Service Instances
3.	Navigeer naar de actieve instantie op port 7224
4.  	Kies Queues uit het dropdown-menu en zoek op jms.*.
5.	Controleer dat de genoemde Queues geen pending berichten bevatten
Indien er pending berichten worden aangetroffen moet er gekeken worden of deze 
verwijderd kunnen/moeten worden.

Controle 2	 VOS ontvangt uitvoeringsinformatie van VMB.
1.	Log in op PVT (zie Omgeving 8)
2.	Verifieer dat treinnummers zich verplaatsen.

