## I.23 Upgrade WebLogic rpm s
1. Voer [S.9] uit om te verifieren welke versie van de 
<component>_platform_<omgeving> rpm momenteel ge nstalleerd is.
2. Indien volgens het TECH-DBK-[versie]-[omgeving] document een nieuwe versie van de 
<component>_platform_<omgeving> rpm beschikbaar is, voer dan het 
volgende uit als root:
  root$ yum clean all
  root$ yum update <component>_platform_<omgeving>-<nieuw-versienummer>

