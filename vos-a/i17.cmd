## I.17 Handmatig creeeren en verwijderen van bridges
Deze handmatige stap staat hier tijdelijk, omdat er bridges gemaakt moeten worden 
naar topics van niet-VOS componenten die niet altijd de juiste prefix hebben. Hier 
kunnen de VOSTool -scripts niet mee overweg. De commando's die hieronder gegeven 
zijn, zijn voorbeeld commando's voor de modelpost. Voor een andere omgeving dient 
een andere hostname genomen te worden.

LET OP: DIT MOET UITGEVOERD WORDEN OP DE ACTIEVE EMS NODE

1) login als root op de tibco server en start tibemsadmin

login as: root
root@pads22.ad.post21.nl's password:
Last login: Fri Jun 19 11:48:53 2015 from pads30.ad.post21.nl
Ongeautoriseerd gebruik van dit computersysteem en de daaraan gekoppelde apparatuur 
en programmatuur is verboden.

[root@pads22 ~]# cd /home/tibco/
[root@pads22 tibco]# tibemsadmin

      Let op: In een omgeving met EMS7 (momenteel ACC en PROD) wordt tibemsadmin als 
volgt  gestart:
      # /opt/tibco/ems/7.0/bin/tibemsadmin


2) maak een connectie naar de juiste ems-instantie

> connect tcp://pads22.ad.post21.nl:7226
Login name (admin): admin
Password:
Connected to: tcp://pads22.ad.post21.nl:7226

3) bekijk welke bridges er zijn voor een topic

tcp://pads22.ad.post21.nl:7226> show bridge topic 
P.Beheersing.TreinPositieService.1.TreinPositieGewijzigd.Event.2

4) creeer een bridge

tcp://pads22.ad.post21.nl:7226> create bridge 
source=topic:P.Beheersing.TreinPositieService.1.TreinPositieGewijzigd.Event.2 
target=queue:A.ESB.UitvoeringInformatieService.1.TreinPositieService.1.TreinPositieGe
wijzigd.Event.2

5) verwijder een bridge

tcp://pads22.ad.post21.nl:7226> delete bridge 
source=topic:P.Beheersing.TreinPositieService.1.TreinPositieGewijzigd.Event.2 
target=queue:avos.ESB.UitvoeringInformatieService.1.TreinPositieService.1.TreinPositi
eGewijzigd.Event.2

