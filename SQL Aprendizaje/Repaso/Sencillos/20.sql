/*20. Para los departamentos en los que hay algún empleado cuyo salario sea mayor de 4000 €, hallar el nº de empleados y la suma de sus salarios, comisiones y nº de hijos.*/

SELECT NUMDE, COUNT(NOMEM) AS NºEmpleados, SUM(SALAR) AS Suma_salarios, IFNULL(SUM(COMIS), 0) AS Suma_comisiones, COUNT(NUMHI) AS NºHijos
FROM TEMPLE
WHERE SALAR > 4000
GROUP BY NUMDE;