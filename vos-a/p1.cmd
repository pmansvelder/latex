## P.1	Configureren JTA
Dit commando is niet componentspecifiek, het maakt daarom niet uit welk <component> 
wordt gebruikt.
  weblogic$ cd $RELEASE/<component>/vostools-platform/bin
Installeer de JTA-configuratie
  weblogic$ ./run.sh configWeblogic.py -d $PLATFORMCONF --install --jta

