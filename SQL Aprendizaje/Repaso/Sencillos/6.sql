/*6. Obtener por orden alfabético los nombres y salarios de los empleados cuyo salario es inferior a la comisión más alta existente.*/

SELECT NOMEM, SALAR
FROM TEMPLE
GROUP BY SALAR, NOMEM
HAVING SALAR < MAX(COMIS)
ORDER BY NOMEM;