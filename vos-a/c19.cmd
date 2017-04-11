## C.19  Database datadictionary genereren
  oracle$ cd $RELEASE/<component>/vostools-deploy/bin
Het volgende commando genereert een datadictionary van het databaseschema van het 
betreffende component. Kies een naam voor het doelbestand en vul deze in bij 
<doelbestand>.
  oracle$ ./run.sh checkDB.py -d $PLATFORMCONF --datadictionary > <doelbestand>
Het bestand <doelbestand> kan gebruikt worden voor analyses bij afwijkingen in de 
CRC. De naamgevingsconventie is <ORACLE_SID>_<dd-mm-jjjj>_<versie>.txt, 
bijv. P1VOS1_01-05-2015_2.7.2.txt.

