## R.2  Weblogic nieuwe PRMs verwijderen.
Verwijder alle Weblogic RPMs in de omgekeerde volgorde van het technisch draaiboek 
(op alle servers van het cluster, behalve de Weblogic RPM die alleen op de admin 
node staat):
root$ yum remove <component>_weblogic-<nieuweversie>
root$ yum remove <component>_files-<nieuweversie>
root$ yum remove <component>_linux-<nieuweversie>
root$ yum remove <component>_platform_<omgeving>-<nieuweversie>
Controleer of er nog Weblogic processen draaien van het component:
root$ ps aux | grep <component>
Als dit zo is, volg dan de volgende stappen:
1) Ga op de adminserver naar: cd /opt/scripts/wls-1/bin/
2) Voer uit: ./weblogic.sh removeDomain /opt/<component>/config-1/jee
3) Kill (kill -9) de eventueel overgebleven nodemanager en adminserver processen, 
die je kunt vinden met: ps -eaf | grep java. Doe dit op alle servers van het cluster.
4) Ga op de adminserver naar: /opt/weblogic/domains/
5) rm -rf <domain-name>
6) Verwijder uit /etc/sysconfig/wlsnodemanager.<node>.properties en de 
wlsServers.<node>.properties de regels van het domein van het component dat je 
verwijderd hebt. Let op; er kunnen in deze bestanden ook regels met configuratie van 
andere domeinen staan; let op dat je die niet verwijdert.

