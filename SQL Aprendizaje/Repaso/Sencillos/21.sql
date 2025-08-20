/*21. Hallar los nº de extensión telefónica mayores de los diversos departamentos, sin incluir los nº de éstos.*/

SELECT MAX(EXTEL)
FROM TEMPLE
GROUP BY NUMDE;