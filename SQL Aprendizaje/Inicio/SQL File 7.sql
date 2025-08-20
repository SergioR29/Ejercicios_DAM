/* 1. Ejercicio */
# Comentario de una sola línea
-- Hola

SELECT NOMEM, SALAR, SALAR+ifnull(comis,0) AS SALARIO_MENSUAL
FROM TEMPLE 
WHERE SALAR > 2000;
