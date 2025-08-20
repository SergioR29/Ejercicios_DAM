SELECT FECNA AS Nacimiento, FECIN AS Ingreso
FROM TEMPLE
WHERE FECNA AND FECIN BETWEEN '1945-09-10' AND '2000-12-12'; /* Si le quitas las comillas de caracteres a las fechas entonces no saldrá ninguna entre esas y los valores pueden ser de cualquier tipo */