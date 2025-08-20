/*32. Hallar la edad media en años cumplidos en el día de hoy de los empleados que tienen más de 2 hijos.*/

SELECT AVG(TRUNCATE(DATEDIFF(CURDATE(), FECNA)/365.25, 0)) AS Edad_Media
FROM TEMPLE
WHERE NUMHI > 2;