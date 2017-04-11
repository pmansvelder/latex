## C.7	Controleer database instanties
1.	Log in op een van de database servers (zie Omgeving 2)
2.	Stel als oracle-gebruiker zijn omgeving in:
  oracle$  . oraenv
3.      Vul SID in
        Indien het SID niet bekend is kan deze worden opgevraagd met ps -ef | grep 
pmon
4.	Controleer dat er voor elke component  een service is en dat die instantie 
de status READY heeft
  oracle$ lsnrctl status | grep -E -i "bgs|bus|ics|vos|pln|uis" -A 1
5.  Indien vanuit de root-user naar de oracle-user is gewisseld, wordt weer 
root-user:
  oracle$ exit

