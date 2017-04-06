De benodigde bestanden worden gedistribueerd via provisioning. Deze worden met het volgende 
commando gedownload.

N.B. Zorg ervoor dat de variabele $RELEASE (of $VORIGERELEASE) goed gezet is, 
anders gaat het prorail_install script software downloaden en installeren uit een default 
directory !

  root$ prorail_install.sh prorail <component> <versie> <release-map>
  root$ chown -R <user>. <release-map>
De waarde voor <release-map> is $RELEASE of $VORIGERELEASE, afhankelijk van de versie die 
wordt gedownload
