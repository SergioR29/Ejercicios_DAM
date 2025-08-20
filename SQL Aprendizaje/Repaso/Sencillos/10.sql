/*10. Se desea hacer un regalo de un 1% del salario a los empleados en el día de su onomástica. Hallar, por orden alfabético, los nombres y cuantía de los regalos para los que
celebren su santo el día de San Honorio.*/

SELECT NOMEM, SALAR*0.01 AS Cuantía 
FROM TEMPLE
WHERE MONTH(FECNA) = 10 AND DAY(FECNA) = 20
ORDER BY NOMEM;