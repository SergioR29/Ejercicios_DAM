/*2.Se ha decidido dar a los empleados una paga extra de 500 € por hijo a partir del cuarto inclusive. Obtener por orden alfabético nombre y salario total con la extra.*/

SELECT NOMEM, SALAR+500*NUMHI AS Paga_Extra
FROM TEMPLE
WHERE NUMHI > 0
ORDER BY NOMEM;