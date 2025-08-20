/*4. Para todos los departamentos que no sean de dirección ni de sectores, hallar número de departamento y sus extensiones telefónicas, por orden creciente de departamento, y
dentro de éste por número de extensión creciente.*/

SELECT DISTINCT TEMPLE.NUMDE, EXTEL
FROM TEMPLE, TDEPTO
WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND NOMDE NOT LIKE 'DIRECCION%' AND NOMDE NOT LIKE 'SECTOR%'
ORDER BY NUMDE, EXTEL