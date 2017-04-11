## P.6	Configureren JMS modules voor <component>
  weblogic$ cd $RELEASE/<component>/vostools-platform/bin
Verwijder eerst de bestaande JMS module uit weblogic en de ConnectionFactory uit 
Tibco
  weblogic$ cd $RELEASE/<component>/vostools-platform/bin
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --remove --weblogic --cf
Installeer nu de nieuwe ConnectionFactory en JMS module
  weblogic$ ./run.sh configJMS.py -d $PLATFORMCONF --install --weblogic --cf --user
Controleer via [C.3] of de JMS module is aangemaakt in weblogic

