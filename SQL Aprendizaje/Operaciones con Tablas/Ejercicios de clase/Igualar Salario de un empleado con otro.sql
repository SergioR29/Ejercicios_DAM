UPDATE empleados AS e1, 
       (SELECT salar
        FROM empleados
        WHERE numem = 500) AS e2 
SET e1.salar = e2.salar
WHERE e1.numem = 450;

SELECT NUMEM, SALAR
FROM EMPLEADOS
WHERE NUMEM = 450 OR NUMEM = 500;