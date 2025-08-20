/* 8.Obtener por orden alfabético los nombres de los departamentos que no sean de dirección ni de sectores. */

SELECT NOMDE
FROM TDEPTO
WHERE NOMDE NOT LIKE 'DIRECCION%' AND NOMDE NOT LIKE 'SECTOR%'
ORDER BY NOMDE;