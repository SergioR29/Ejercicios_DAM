/*1.Obtener los nombres de los empleados cuya comisión es superior o igual al 50% de su sueldo.*/

SELECT NOMEM
FROM TEMPLE
WHERE COMIS >= SALAR*0.5;