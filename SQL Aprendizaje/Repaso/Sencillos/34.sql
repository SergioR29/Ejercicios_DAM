/*34. Para los empleados que han ingresado en la empresa en los últimos 5 años, hallar la edad media en años cumplidos de la edad a la que han ingresado.*/

SELECT AVG(TRUNCATE(DATEDIFF(FECIN, FECNA)/365.25, 0)) AS Edad_Media
FROM TEMPLE
WHERE FECIN >= DATE_ADD('1983-01-01', INTERVAL 5 YEAR);