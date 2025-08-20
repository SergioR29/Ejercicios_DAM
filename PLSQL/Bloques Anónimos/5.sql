DECLARE
  CURSOR cursor IS
    SELECT NUMDE, AVG(SALAR), MAX(SALAR), MIN(SALAR), SUM(NUMHI)
    FROM TEMPLE
    GROUP BY NUMDE;
  
  N_Departamento integer;
  media decimal;
  maximo integer;
  minimo integer;
  sum_hijos integer;

BEGIN
 OPEN cursor;

 LOOP
   FETCH cursor INTO N_Departamento, media, maximo, minimo, sum_hijos;
   EXIT WHEN cursor%NOTFOUND;
   DBMS_OUTPUT.PUT_LINE('NºDepartamento: ' || N_Departamento || ', Salario medio: ' || media || ', Salario máximo: ' || maximo || ', Salario mínimo: ' || minimo || ', Total de hijos: ' || sum_hijos);
 END LOOP;

 CLOSE cursor;

END;
/ 