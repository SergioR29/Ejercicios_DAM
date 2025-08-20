/* 11.Hallar por orden alfabético los nombres de los departamentos que o bien tienen directores en funciones o bien en propiedad y su presupuesto anual excede de 30.000 € bien no dependen de ningún otro.*/

SELECT NOMDE
FROM TDEPTO
WHERE (TIDIR = 'F' OR TIDIR = 'P') AND PRESU > 30.000
ORDER BY NOMDE; 