/* 9.Obtener por orden alfabético los nombres y los salarios de los empleados que o bien no tienen hijos y ganan más de 1200 €, o bien tienen hijos y ganan menos de 1500 €.*/

SELECT NOMEM, SALAR 
FROM TEMPLE  
WHERE (NUMHI = 0 AND SALAR > 1200) OR (NUMHI > 0 AND SALAR < 1500)
ORDER BY NOMEM;