/*24.	Hallar el máximo valor de la suma de los salarios de los departamentos.*/

SELECT NUMDE, SUM(SALAR)
FROM TEMPLE
GROUP BY NUMDE
HAVING SUM(SALAR) >= ALL(SELECT SUM(SALAR)
						 FROM TEMPLE
                         GROUP BY NUMDE);