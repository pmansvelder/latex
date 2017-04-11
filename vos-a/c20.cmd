## C.20 Controle UIS Stateless EJB timers

Omschrijving	Controleer of de Access Total Counts van de UIS timers opgehoogd 
worden na een minuut

Deze Controle kan handmatig of via script uitgevoerd worden

VIA SCRIPT   (Dit werkt pas vanaf 2.8.1)
Ga naar de vostools-platform/bin directory in de   n van de componenten.
  weblogic$ ./run.sh checkWeblogic.py -d $PLATFORMCONF --ejbAccessCount

Het overzicht met de access counts van de UIS timers wordt getoond. Als het 
overzicht na een minuut weer wordt opgevraagd, moeten de counts opgehoogd zijn.

HANDMATIG
1.	Log in op de beheerapplicatie van Weblogic (zie Omgeving 1)
2.	Navigeer naar:
 	Deployments
 	Monitoring
 	EJBs
 	Stateless
3.	Stel vast wat de Access Total Counts zijn van de EJB's waarvan de naam 
begint met 'Synchrone'
4.	Na een minuut moeten deze counts bij verversen van de console opgehoogd zijn

Indien de timer(s) niet lopen en de counts dus niet opgehoogd worden: herstart de 
managed servers. 

-------------- Appendix (R): Rollback procedures --------------

Indien de nieuwe versie van de component al gedeployed is, doe dan het volgende:
- De nstalleer de nieuwe component volgens [R.1] op de weblogicomgeving.

Indien er een database upgrade heeft plaatsgevonden, doe dan het volgende:
- Zet de database back-up volgens [R.2] op de oracleomgeving.

Indien er een <component>_ems-<nieuw-versienummer> is geinstalleerd, verwijder deze 
dan en installeer de oude versie:
  root$ yum remove <component>_ems-<nieuw-versienummer>
  root$ yum install <component>_ems-<oud-versienummer>

Indien er een <component>_platform_<omgeving>-<nieuw-versienummer> is geinstalleerd, 
verwijder deze dan en installeer de oude versie:
1) Ga op de adminserver naar: /opt/scripts/wls-1/bin/
2) ./weblogic.sh removeDomain /opt/<component>/config-1/jee
3) Kill (kill -9) de eventueel overgebleven nodemanager en adminserver processen, 
die je kunt vinden met: ps -eaf | grep java. Doe dit op alle servers van het cluster.
4) Ga op de adminserver naar: /opt/weblogic/domains/
5) rm -rf <domain-name>
6) Verwijder uit /etc/sysconfig/wlsnodemanager.<node>.properties en de 
wlsServers.<node>.properties de regels van het domein van het component dat je 
verwijderd hebt. Let op; er kunnen in deze bestanden ook regels met configuratie van 
andere domeinen staan; let op dat je die niet verwijdert.
7) De-installeer de <component>_platform_<omgeving>-<nieuw-versienummer> rpm. 
Hiermee worden ook de <component>_linux, <component>_files en <component>_weblogic 
rpm's verwijderd.
  root$ yum remove <component>_platform_<omgeving>-<nieuw-versienummer>
8) Installeer de oude <component>_platform_<omgeving>-<oud-versienummer> rpm, de 
<component>_linux rpm, de <component>_files rpm en de <component>_weblogic rpm.
  root$ yum install <component>_platform_<omgeving>-<oud-versienummer>
  root$ yum install <component>_files-<oud-versienummer>
  root$ yum install <component>_linux-<oud-versienummer>
  root$ yum install <component>_weblogic-<oud-versienummer>

Voer tenslotte de volgende stappen uit:
- Voer [I.8 Stoppen van een managed server] uit op de weblogicomgeving.
- Voer [I.9 Starten van een managed server] uit op de weblogicomgeving.
- Installeer de vorige component volgens [R.3] op de weblogicomgeving.

---------------------------------------------------------------

