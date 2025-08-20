/*33. Para los departamentos 111 y 112, hallar la media de los años de servicio de sus empleados el día 31-12-1986.*/

SELECT AVG(TRUNCATE(DATEDIFF('1986-12-31', FECIN)/365.25, 0)) AS Edad_Media
FROM TEMPLE
WHERE (NUMDE = 111 OR NUMDE = 112) AND FECIN <= '1986-12-31';