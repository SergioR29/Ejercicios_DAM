/*36. Para cada extensión telefónica y cada departamento hallar cuántos empleados la usan y el salario medio de éstos.*/

SELECT EXTEL, COUNT(*), AVG(SALAR)
FROM TEMPLE
GROUP BY EXTEL, NUMDE
ORDER BY EXTEL;