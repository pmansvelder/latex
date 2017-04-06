Als er tijdens het uitvoeren van database scripts fouten ontstaan worden deze gelogd 
en het script afgebroken. Voor het geval dat fouten tijdens een installatie niet 
opvallen worden de logfiles gecontroleerd op fouten met het volgende commando.

  oracle$ grep "ORA-" /var/log/oracle/*

Dit commando geeft alle ORA-meldingen weer. Als er fouten zijn gevonden is het 
belangrijk te controleren of deze ook door de huidige installatie komen. 
Dat kan door de datum in de bestandsnaam te controleren met de datum van de installatie, 
of in de logfile te kijken naar de laatste foutmelding is deze van een eerdere installatie 
dan is het niet relevant.
