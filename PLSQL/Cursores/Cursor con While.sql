CREATE OR REPLACE PROCEDURE cursor_while (num_dep integer)

AS
  CURSOR datos_e IS 
    SELECT nomem, numem, salar
    FROM Temple
    WHERE Numde=num_dep;

  nombre varchar2(20);
  numero integer;
  salario integer;
  
BEGIN
  OPEN datos_e;
  FETCH datos_e INTO nombre, numero, salario;
  
  while datos_e%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE(nombre || ‘ ‘ || numero || ‘ ‘ || salario);
    FETCH datos_e INTO nombre, numero, salario;
  END LOOP;

  CLOSE datos_e;

END;
/
