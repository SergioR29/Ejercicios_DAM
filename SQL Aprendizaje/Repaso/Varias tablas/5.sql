/*5. Comprobar que todos los empleados que son directores de departamento están en la tabla empleados. (Con correlación)*/

SELECT *
FROM TDEPTO
WHERE EXISTS (SELECT *
                  FROM TEMPLE
                  WHERE NUMEM=TDEPTO.DIREC)