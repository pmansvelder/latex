## C.18  Database CRC genereren
  oracle$ cd $RELEASE/<component>/vostools-deploy/bin
Het volgende commando genereert een CRC op basis van de datadictionary van het 
databaseschema van het betreffende component. Vergelijk de CRC van de 
database met die uit Tabel 1 - Applicatiegegevens.
  oracle$ ./run.sh checkDB.py -d $PLATFORMCONF --generatecrc

Indien de CRC afwijkt, kan de installatie wel doorgaan. Rapporteer dit echter bij de 
DBA en voer[C.19 Database datadictionary genereren] uit. Voeg dit resultaat bij voor 
analyse door de DBA.
  
