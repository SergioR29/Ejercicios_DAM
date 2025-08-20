CREATE OR REPLACE PROCEDURE cursor_Loop

AS
  CURSOR datos_e IS 
    SELECT nomem, numem, salar
    FROM Temple;

  nombre varchar2(20);
  numero integer;
  salario integer;
  
BEGIN
  OPEN datos_e;
  
  LOOP 
    FETCH datos_e INTO nombre, numero, salario;
    EXIT WHEN datos_e%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(nombre || ‘ ‘ || numero || ‘ ‘ || salario);
  END LOOP;

  CLOSE datos_e;

END;
/
