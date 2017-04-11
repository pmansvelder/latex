## V.5	Logging configureren
Dit commando is niet componentspecifiek, het maakt daarom niet uit welk <component> 
wordt gebruikt.
Van de gehele installatie dient na afloop een log overlegd te worden. De vostools 
bieden hier de middelen voor.

Start de logging als volgt, er verschijnt dan een melding dat het loggen is gestart.
  <user>$ $RELEASE/<component>/vostools-shared/bin/voslog.sh --start
Als het installatieproces is afgelopen kan de logging worden gestopt.
  <user>$ $RELEASE/<component>/vostools-shared/bin/voslog.sh --stop
Het logbestand kan in een leesbaar formaat worden afgedrukt met het printstatement:
  <user>$ $RELEASE/<component>/vostools-shared/bin/voslog.sh --print > 
$RELEASE/installatie_log_$(date +%s).log
Deze stap blijft actief zolang er ingelogd is op de omgeving. Het is belangrijk dat 
alle stappen onder deze gebruiker worden uitgevoerd. Als er opnieuw ingelogd wordt 
dient deze stap opnieuw uitgevoerd te worden.

