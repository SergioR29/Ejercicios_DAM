/*31. Hallar para los empleados de los departamentos 110 y 112 su nombre y el mes y el día de su cumpleaños, por orden creciente de éstos.*/

SELECT NOMEM, MONTH(FECNA) AS Mes_Cumpleaños, DAY(FECNA) AS Día_Cumpleaños
FROM TEMPLE
WHERE NUMDE = 110 OR NUMDE = 112
ORDER BY NOMEM;