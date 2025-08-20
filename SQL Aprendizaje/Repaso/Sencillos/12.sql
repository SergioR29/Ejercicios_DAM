/*12. Obtener los números de departamento, y los 5 caracteres siguientes al de la posición duodécima de sus nombres, mostrándolos por orden de nº de departamento.*/

SELECT NUMDE, SUBSTR(NOMDE, 12, 17)
FROM TDEPTO
ORDER BY NUMDE;