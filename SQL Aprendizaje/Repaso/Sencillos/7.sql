/*7. Obtener por orden alfabético los nombres y salarios de los empleados cuyo salario dividido por su nº de hijos cumpla una, o ambas, de las siguientes condiciones:
	 - Que sea inferior a 1200 €.
	 - Que sea superior al doble de su comisión.*/
     
SELECT NOMEM, SALAR
FROM TEMPLE
WHERE NUMHI > 0
GROUP BY NOMEM, SALAR, NUMHI, COMIS
HAVING ((SALAR/NUMHI) < 1200 AND (SALAR/NUMHI) > COMIS*2) OR ((SALAR/NUMHI) < 1200 OR (SALAR/NUMHI) > COMIS*2);