/* 5.Para los empleados que no tienen comisión, obtener por orden alfabético el nombre y el cociente entre su salario y el número de hijos. */

SELECT NOMEM, SALAR/NUMHI
FROM TEMPLE
WHERE COMIS IS NULL
ORDER BY NOMEM;