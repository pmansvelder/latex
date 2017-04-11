## I.5	De nstalleer component
  weblogic$ cd $RELEASE/<component>/vostools-deploy/bin
Verwijder de component
  weblogic$ ./run.sh configEAR.py -d $PLATFORMCONF --undeploy
De volgende melding is een gevolg van de gebruikte scripting en kan genegeerd worden.
<Warning><WLContext.close() was called in a different thread than the one in which 
it was created.>
Controleer via [C.1] dat er geen versies van <component> meer ge nstalleerd zijn. 
Verwijder deze zo nodig met de hand in dit venster door de versie te selecteren, op 
de Delete-knop te drukken en te accorderen.

