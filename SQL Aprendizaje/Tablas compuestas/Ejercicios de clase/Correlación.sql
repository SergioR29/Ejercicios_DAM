SELECT NOMEM   /*Sentencias select subordinadas correlacionadas, utilizar en un select una columna de la tabla de fuera*/
FROM TEMPLE E1
WHERE SALAR >= (SELECT AVG(SALAR)
                FROM TEMPLE E2
                WHERE E1.NUMDE=E2.NUMDE);