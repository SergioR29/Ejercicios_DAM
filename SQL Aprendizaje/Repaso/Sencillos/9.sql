/*9. Hallar por nº de empleado el nombre y salario total de los empleados cuyo salario total supera al salario mínimo en 3000 €.*/

SELECT NOMEM, SALAR+COMIS AS Salario_Total
FROM TEMPLE
GROUP BY NUMEM, SALAR
HAVING Salario_Total > 3000;