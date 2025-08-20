CREATE OR REPLACE PROCEDURE cursor_while_param (nombre_dep varchar2)

AS
  nh integer;
  numero_dep integer;
  nombre_empleado varchar2(20);
  salario integer;

  CURSOR c (numero_dep integer, nh integer DEFAULT 0) IS
    SELECT numde, nomem, salar
    FROM TEMPLE
    WHERE Numde=numero_dep AND nh > 3;

BEGIN
  nh:='&n';
  SELECT numde INTO numero_dep
  FROM TDEPTO
  WHERE Nomde=nombre_dep;

  OPEN c (numero_dep, nh);
  FETCH c INTO numero_dep, nombre_empleado, salario;

  WHILE c%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE(nombre_empleado || ‘ ‘ || numero_dep || ‘ ‘ || salario);
    FETCH c INTO numero_dep, nombre_empleado, salario;
  END LOOP;

  CLOSE c;

END;
/
