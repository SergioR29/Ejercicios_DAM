/*19. Hallar el salario medio por departamento para aquellos departamentos cuyo salario máximo es inferior al salario medio de todos los departamentos.*/

SELECT AVG(SALAR)
FROM TEMPLE 
GROUP BY NUMDE, SALAR
HAVING MAX(SALAR) < (SELECT AVG(SALAR) FROM TEMPLE);