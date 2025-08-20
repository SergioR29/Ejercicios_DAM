/*30. Para los empleados de los departamentos 110 y 111, hallar por orden alfabético: nombre y tiempo que llevan en la empresa en el día de hoy expresado en años, meses y días.*/

SELECT NOMEM, TRUNCATE(DATEDIFF(CURDATE(), FECIN)/365.25, 0) AS Años, TRUNCATE(DATEDIFF(CURDATE(), FECIN)/12, 0) AS Meses, TRUNCATE(DATEDIFF(CURDATE(), FECIN), 0) AS Días
FROM TEMPLE
WHERE NUMDE = 110 OR NUMDE = 111
ORDER BY NOMEM;