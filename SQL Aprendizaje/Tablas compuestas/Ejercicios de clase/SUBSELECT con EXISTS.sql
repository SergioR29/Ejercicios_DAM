SELECT NOMEM
FROM TEMPLE
WHERE EXISTS (SELECT *
			  FROM TDEPTO, TCENTR
              WHERE TDEPTO.NUMCE=TCENTR.NUMCE AND NUMDE=122 AND DIR LIKE '%ALCALA%') AND NUMDE=122 AND SALAR > (SELECT AVG(SALAR)
																												FROM TEMPLE
                                                                                                                WHERE NUMDE=122)
ORDER BY NOMEM;