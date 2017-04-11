## P.13	Flashback uitschakelen
Log in op de database
  oracle$ . oraenv
  ORACLE_SID = [oracle] ? <sid>
  oracle$ sqlplus / as sysdba
Controleer eerst of flashback inderdaad aan staat
  SQL> SELECT flashback_on FROM v$database;
Indien er in de uitvoer nu "YES" staat, schakelen we flashback uit met de volgende 
query.
  SQL> ALTER DATABASE FLASHBACK OFF;
Controleer nogmaals of flashback aan staat. De uitvoer zal nu "NO" zeggen.

