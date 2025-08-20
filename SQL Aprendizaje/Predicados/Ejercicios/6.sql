/*6.Obtener por orden alfabético los nombres y salarios de los empleados del departamento 111 que tienen comisión si hay alguno de ellos cuya comisión supere el 15% de su salario.*/

SELECT NOMEM, SALAR
FROM TEMPLE
WHERE NUMDE = 111 AND COMIS > 0 AND COMIS > 0.15*SALAR;