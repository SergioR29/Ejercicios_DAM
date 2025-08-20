/*2. Para los departamentos cuyo presupuesto anual supera los 60.000 €, hallar cuántos empleados hay en promedio por cada extensión telefónica.*/

SELECT TDEPTO.NUMDE, COUNT(*)/COUNT(DISTINCT EXTEL) media
FROM TEMPLE, TDEPTO
WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TDEPTO.PRESU > 60
GROUP BY TEMPLE.NUMDE;