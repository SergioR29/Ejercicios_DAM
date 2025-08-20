/*27. Obtener, por orden alfabético, los nombres de los empleados que han ingresado el 1-1-1988 o en el día de hoy.*/

SELECT NOMEM
FROM TEMPLE
WHERE FECIN = 1988-1-1 OR FECIN = CURDATE()
ORDER BY NOMEM;