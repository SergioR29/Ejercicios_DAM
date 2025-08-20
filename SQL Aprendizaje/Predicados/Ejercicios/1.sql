/*1. Para todos los empleados que tienen comisión, hallar sus salarios mensuales totales incluyendo ésta. Obtenerlos por orden alfabético.*/

SELECT NOMEM, SALAR+COMIS
FROM TEMPLE
WHERE COMIS <> 0 ORDER BY NOMEM;