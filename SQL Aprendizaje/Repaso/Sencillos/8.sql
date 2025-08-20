/*8. Obtener por orden alfabético los nombres y comisiones de los empleados del departamento 110 si hay en él algún empleado que tenga comisión.*/

SELECT NOMEM, COMIS
FROM TEMPLE
WHERE NUMDE = 110 AND COMIS > 0