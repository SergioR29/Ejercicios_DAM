/*25. Obtener los nombres y sueldos de los empleados que hayan empezado a trabajar en la empresa en el año 1988 o después, por orden alfabético.*/

SELECT NOMEM, SALAR, FECIN
FROM TEMPLE
WHERE YEAR(FECIN) >= 1988
ORDER BY NOMEM;