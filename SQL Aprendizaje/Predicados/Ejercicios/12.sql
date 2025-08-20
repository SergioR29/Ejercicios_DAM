/* 12.	Obtener por orden alfabético los nombres y comisiones de los empleados del departamento 110 si hay en el algún empleado que tenga comisión.*/

SELECT NOMEM, COMIS
FROM TEMPLE
WHERE NUMDE = 110 AND COMIS > 0
ORDER BY NOMEM;