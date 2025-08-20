/*14. Obtener los tres últimos caracteres de los nombres de departamento por orden alfabético.*/

SELECT RIGHT(NOMDE, 3)
FROM TDEPTO
ORDER BY RIGHT(NOMDE, 3);