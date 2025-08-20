/*7.Obtener los nombres, salarios y fechas de ingreso de los empleados que o bien ingresaron después del 1-1-88 o bien tienen un salario inferior a 1200 € Clasificarlos por fecha y nombre.*/

SELECT NOMEM, SALAR, FECIN
FROM TEMPLE
WHERE FECIN > '88-01-01' OR SALAR < 1200
ORDER BY FECIN, NOMEM;