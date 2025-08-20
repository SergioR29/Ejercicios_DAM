/* 3.Obtener por orden alfabético los nombres de empleados cuyo apellido tenga seis o más letras.  */

SELECT NOMEM
FROM TEMPLE
WHERE NOMEM LIKE '______%,%'
ORDER BY NOMEM;