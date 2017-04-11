## P.11	Tibco library in Weblogic installeren
Dit commando is niet componentspecifiek, het maakt daarom niet uit welk <component> 
wordt gebruikt.
Definieer de $RELEASE variabele opnieuw op <server> of vul hem zelf in in 
onderstaand commando.
  weblogic@<server>$ scp 
bhr_<user>:/mnt/weblogic/domains/<domain>/lib/tibjms-5.1.jar 
$RELEASE/<component>/vostools-shared/lib/tibjms.jar

