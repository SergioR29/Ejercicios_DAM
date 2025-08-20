/*3. Hallar, por orden alfabético, los nombres de los empleados que son directores en funciones.*/

SELECT NOMEM
FROM TEMPLE, TDEPTO
WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TIDIR = 'F'
ORDER BY NOMEM;