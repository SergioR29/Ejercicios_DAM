SELECT TEMPLE.*, TCENTR.*   /*Sirve para sacar todos los datos de una tabla: tabla.* */
FROM TEMPLE, TDEPTO, TCENTR /*Seleccionamos varias tablas y podemos añadir un alias a cada tabla, pero para ello primero hay que cambiar el nombre original por el alias en todos los sitios*/
WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TDEPTO.NUMCE=TCENTR.NUMCE /*No podemos unir TCENTR con TEMPLE porque no tienen un campo en común*/
ORDER BY NUMEM; /*Esto sí que es una reunión, hemos unido las 3 tablas en una para que no salgan los nombres repetidos.*/