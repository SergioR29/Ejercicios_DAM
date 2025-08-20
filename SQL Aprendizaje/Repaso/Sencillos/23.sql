/*23. Para los departamentos cuyo salario medio supera al de la empresa, hallar cuántas extensiones telefónicas tienen.*/

SELECT NUMDE, COUNT(EXTEL)
FROM TEMPLE
GROUP BY NUMDE
HAVING AVG(SALAR) > (SELECT AVG(SALAR)
                     FROM TEMPLE);