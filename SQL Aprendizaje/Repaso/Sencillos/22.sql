/*22. Para cada extensión telefónica, hallar el nº de departamentos a los que sirve.*/

SELECT EXTEL, COUNT(NUMDE)
FROM TEMPLE
GROUP BY EXTEL;