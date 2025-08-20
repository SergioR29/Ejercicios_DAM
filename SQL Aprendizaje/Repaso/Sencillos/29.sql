/*29. Para los empleados de los departamentos 111 y 112 hallar por orden alfabético: nombre, edad en años cumplidos en la fecha de hoy y edad que tenían cuando ingresaron en la
empresa.*/

SELECT NOMEM, TRUNCATE(DATEDIFF(CURDATE(),FECNA)/365.25, 0) AS EDAD_ACTUAL, TRUNCATE(DATEDIFF(FECIN,FECNA)/365.25, 0) AS EDAD_INGRESO
FROM TEMPLE
WHERE NUMDE = 111 OR NUMDE = 112
ORDER BY NOMEM;