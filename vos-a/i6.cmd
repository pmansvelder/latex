## I.6	Installeer component
  weblogic$ cd $RELEASE/<component>/vostools-deploy/bin
Deploy de nieuwe component
  weblogic$ ./run.sh configEAR.py -d $PLATFORMCONF --deploy
De volgende melding is een gevolg van de gebruikte scripting en kan genegeerd worden.
<Warning><WLContext.close() was called in a different thread than the one in which 
it was created.>

