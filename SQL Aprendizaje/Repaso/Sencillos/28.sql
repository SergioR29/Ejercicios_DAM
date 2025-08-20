/*28. Obtener, por orden alfabético, los nombres y salarios de los empleados que ingresaron después del 1-1-1988 o antes y además tienen un salario inferior al
salario más bajo de los que ingresaron con posterioridad al 1-1-1988 incrementado en un 10%.*/

SELECT NOMEM, SALAR, FECIN
FROM TEMPLE
WHERE (FECIN >= 1988-1-1 OR FECIN < 1988-1-1) AND SALAR < (SELECT MIN(SALAR)+MIN(SALAR)*0.1
                                                           FROM TEMPLE
                                                           WHERE FECIN > 1988-1-1)
ORDER BY NOMEM;