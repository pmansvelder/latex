De bin-map van een java installatie moet aan de PATH-variabele worden toegevoegd 
voordat de scripts werken.

Vind een installatie van java op de omgeving
  <user>$ find /opt -name java | grep jre
Dit geeft één of meer regels terug in de volgende vorm:
/opt/oracle/middleware/jrockit_160_37/jre/bin/java
/opt/oracle/java/jdk1.8.0_31/jre/bin/java

Voeg de regel van begin tot-en-met de laatste ‘bin’ toe aan de PATH variabele
Voor EE5 deployment:
  <user>$ export PATH=$PATH:/opt/oracle/middleware/jrockit_160_37/bin
Voor EE6-deployment:
  <user>$ export PATH=$PATH:/opt/oracle/java/jdk1.8.0_31/jre/bin

Met het volgende kan gecontroleerd worden of het PATH goed gezet is
  <user>$ java -version
