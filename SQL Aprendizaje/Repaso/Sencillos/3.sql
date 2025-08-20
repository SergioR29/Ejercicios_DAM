/*3.Hallar por orden alfabético los nombres de los empleados tales que si se les da una gratificación de 100 € por hijo, el total de esa gratificación no supera a la décima parte del sueldo.*/

SELECT NOMEM
FROM TEMPLE
WHERE NUMHI > 0 AND EXISTS (SELECT 100*NUMHI
							FROM TEMPLE)
GROUP BY NOMEM, SALAR
HAVING SUM(100*NUMHI) <= (0.1*SALAR)
ORDER BY NOMEM;