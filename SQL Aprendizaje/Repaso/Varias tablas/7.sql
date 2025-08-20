/*7. Hallar, por orden alfabético, los nombres de los departamentos en los que hay algún empleado que cumpla este año más de 50 años de edad.*/

SELECT DISTINCT NOMDE
FROM TDEPTO, TEMPLE
WHERE TDEPTO.NUMDE=TEMPLE.NUMDE AND TRUNCATE(DATEDIFF(CURDATE(), FECNA)/365.25, 0) > 50
ORDER BY NOMDE;