/*11. Obtener nombres abreviados para los departamentos tomando sus 9 primeras letras, por orden alfabético.*/

SELECT SUBSTR(NOMDE, 1, 9) AS Nombres_Abreviados
FROM TDEPTO
ORDER BY NOMDE;