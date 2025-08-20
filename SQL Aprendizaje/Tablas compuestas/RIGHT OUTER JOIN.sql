SELECT *
FROM TDEPTO RIGHT OUTER JOIN TCENTR ON TDEPTO.NUMCE=TCENTR.NUMCE /*Con RIGHT JOIN indicas que la tabla de la derecha no tiene algún departamento asignado si hay alguna fila que no tiene3 correspondencia con otra tabla lo saca. Con el orden que lo hemos puesto primero saca los datos de TDEPTO y luego los de TCENTR*/
ORDER BY NUMDE;