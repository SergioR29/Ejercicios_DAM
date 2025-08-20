SELECT NOMEM, SALAR+COMIS salario_total, 'CON COMISIÓN' COMISION /*Tercera columna*/
FROM TEMPLE
WHERE NUMDE = 112 AND COMIS IS NOT NULL
UNION                                                                                 /*Unimos las consultas*/
SELECT NOMEM, SALAR+COMIS salario_total, 'SIN COMISIÓN' COMISION /*Tercera columna*/
FROM TEMPLE
WHERE NUMDE = 112 AND COMIS IS NULL
ORDER BY NOMEM;