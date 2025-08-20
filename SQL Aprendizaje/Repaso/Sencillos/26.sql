/*26. Obtener, por orden alfabético, los nombres de los empleados que empezaron a trabajar en el año 1966.*/

SELECT NOMEM, FECIN
FROM TEMPLE
WHERE YEAR(FECIN) = 1966
ORDER BY NOMEM;