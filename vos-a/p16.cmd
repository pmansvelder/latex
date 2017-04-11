## P.16	Herstarten specifieke servers of clusters
Dit commando is niet componentspecifiek, het maakt daarom niet uit welk <component> 
wordt gebruikt.
Door expliciet servers op te geven voor het herstarten (komma gescheiden, geen 
spatie) is er meer controle beschikbaar over dit proces. Targets kunnen namen van 
clusters of servers zijn.
  weblogic$ cd $RELEASE/<component>/vostools-platform/bin
  weblogic$ ./run.sh controlWeblogic.py -d $PLATFORMCONF --restart --targets 
<targets>

