/* 4.Obtener por orden alfabético los nombres de empleados cuyo apellido termina en EZ y su nombre de pila termina en O y tiene al menos tres letras.*/

SELECT NOMEM
FROM TEMPLE
WHERE NOMEM LIKE '___EZ,%O'
ORDER BY NOMEM;