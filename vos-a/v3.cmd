## V.3	Variabelen defini ren en aanmaken tijdelijke directories
Variabelen worden gedefinieerd voor veel gebruikte waarden die niet veranderen 
gedurende de installatie.
  <user>$ export RELEASE=/tmp/<change-nummer>
  <user>$ mkdir -p $RELEASE
  <user>$ export VORIGERELEASE=/tmp/<vorig-change-nummer>
  <user>$ mkdir -p $VORIGERELEASE
  <user>$ export PLATFORMCONF=<domein>
Deze stap blijft actief zolang er ingelogd is op de omgeving. Het is belangrijk dat 
alle stappen onder deze gebruiker worden uitgevoerd. Als er opnieuw ingelogd wordt 
dient deze stap opnieuw uitgevoerd te worden.

