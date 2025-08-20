/*6. Obtener, por orden alfabético, todos los datos de los centros de trabajo en los que hay algún departamento cuyo director lo sea en funciones.*/

SELECT TCENTR.*
FROM TCENTR, TDEPTO
WHERE TDEPTO.TIDIR='F' AND TCENTR.NUMCE=TDEPTO.NUMCE
ORDER BY NOMCE;