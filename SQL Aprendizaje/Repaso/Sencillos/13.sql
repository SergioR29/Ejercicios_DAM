/*13. Obtener los nº de departamento, y para los que tengan más de 12 caracteres en el nombre extraer los 5 siguientes, mostrándolos por orden de nº de departamento.*/

SELECT NUMDE, SUBSTR(NOMDE, 13, 5)
FROM TDEPTO
WHERE LENGTH(NOMDE) > 12
ORDER BY NUMDE;