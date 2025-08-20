/*1.Para los departamentos cuyo director lo sea en funciones, hallar el nº de empleados y la suma de sus salarios.*/

SELECT TDEPTO.NUMDE, COUNT(TEMPLE.NOMEM), SUM(TEMPLE.SALAR)                                /*Esto es con YUNCION*/
FROM TEMPLE, TDEPTO
WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TDEPTO.TIDIR = 'F'
GROUP BY TDEPTO.NUMDE;