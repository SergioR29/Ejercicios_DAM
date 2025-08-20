/*15. Hallar, por orden alfabético, los nombres de empleados suprimiendo las 3 últimas letras del nombre de pila, para los empleados cuyos nombres de pila tengan más de 6 letras.*/

SELECT SUBSTRING(NOMEM, 1, LENGTH(NOMEM) - 3) AS nombre_corto
FROM TEMPLE
WHERE LENGTH(NOMEM) > 6
ORDER BY nombre_corto;