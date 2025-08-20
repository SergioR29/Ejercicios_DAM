/*35. Hallar cuántos empleados han ingresado en el año actual.*/

SELECT COUNT(NOMEM)
FROM TEMPLE
WHERE YEAR(FECIN) = CURDATE();