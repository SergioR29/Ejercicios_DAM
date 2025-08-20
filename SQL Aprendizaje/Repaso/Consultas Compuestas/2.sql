/*2. Para los empleados que no tienen comisión, obtener por orden alfabético el nombre y el cociente entre su salario y el nº de hijos, pero si un empleado no tiene hijos,
obtener el salario sin más, indicando este caso con un literal.*/

SELECT NOMEM, SALAR/NUMHI AS Cociente, 'Con hijos' Hijos
FROM TEMPLE
WHERE COMIS IS NULL AND NUMHI > 0
UNION
SELECT NOMEM, SALAR, 'Sin hijos' Hijos
FROM TEMPLE
WHERE NUMHI = 0
ORDER BY NOMEM;