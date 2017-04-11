## I.22 Upgrade EMS rpm s
1. Voer [S.9] uit om te verifieren welke versie van de <component>_ems rpm ge 
nstalleerd zijn. Er zijn twee EMS servers. Indien er op een server
geen rpm's geinstalleerd zijn, voer deze stap dan uit op de andere EMS server.

Let op: Als gevolg van de EMS migratie draait tibco op nieuwe servers en is het 
mogelijk dat er voor een component geen geinstalleerde rpm's te vinden zijn. In dat 
geval moet het huidige draaiboek 
        vergeleken worden met de vorige versie van het draaiboek, om te checken of 
er sprake is van een nieuwe versie van de <component>_ems rpm.

2. Indien volgens het TECH-DBK-[versie]-[omgeving] document een nieuwe versie van de 
<component>_ems rpm beschikbaar is, voer het volgende uit als
root en controleer hierbij dat het rpm versienummer juist is:
  root$ yum clean all
  root$ yum update <component>_ems-<nieuw-versienummer>
(Als er een nieuwere versie van de <component>_platform_<omgeving> rpm hoeft deze 
niet expliciet op de EMS omgeving neergezet te worden. 
Als er een nieuwe <component>_ems rpm wordt geinstalleerd wordt gaat de platform RPM 
automatisch mee)

