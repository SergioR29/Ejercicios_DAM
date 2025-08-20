/* 10.Hallar por orden alfabético los nombres y salarios de los empleados de los departamentos 110 y 111 que o bien no tengan hijos o bien su salario por hijo supere 600 €, si hay alguno sin comisión en los departamentos 111 o 112.*/

SELECT NOMEM, SALAR
FROM TEMPLE
WHERE NUMDE IN (110, 111) AND (NUMHI = 0 OR SALAR > NUMHI*600) AND EXISTS (SELECT * 
																		   FROM TEMPLE
                                                                           WHERE NUMDE IN (111, 112) AND COMIS IS NULL)
ORDER BY NOMEM;