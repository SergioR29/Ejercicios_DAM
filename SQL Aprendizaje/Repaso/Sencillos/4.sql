/*4.Hallar el nombre y salario total de los empleados del dpto. 112, por orden de salario total decreciente y por orden alfabético dentro de salario total.*/

SELECT NOMEM, SALAR+IFNULL(COMIS,0)
FROM TEMPLE
WHERE NUMDE = 122
ORDER BY SALAR+IFNULL(COMIS, 0) DESC, NOMEM;