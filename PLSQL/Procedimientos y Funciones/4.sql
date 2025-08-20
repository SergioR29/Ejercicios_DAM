CREATE OR REPLACE PROCEDURE Listado_Empleados (num_dep integer)

AS
  CURSOR empleados (num_dep integer) IS
    SELECT TEMPLE.Numem, TEMPLE.Nomem, TEMPLE.Salar, TDEPTO.Nomde, TCENTR.Nomce
    FROM TEMPLE, TDEPTO, TCENTR
    WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TDEPTO.NUMCE=TCENTR.NUMCE AND Tdepto.Numde=num_dep;

  n_emp integer;
  nom_emp varchar2(30);
  salario integer;
  nom_dep varchar2(30);
  nom_centro varchar2(30);

  N_Empleado varchar2(20);
  Name_Emp varchar2(30);
  Sal varchar2(20);
  Name_Dpto varchar2(30);
  Name_Centro varchar2(30);
  Espacio_blanco varchar2(20);

BEGIN
  Espacio_blanco:=' ';
  N_Empleado:='NºEmpleado';
  Name_Emp:='Nombre_empl';
  Sal:='Salario';
  Name_Dpto:='Nombre-Dpto';
  Name_Centro:='Nombre_centro';

  OPEN empleados(num_dep);
  FETCH empleados INTO n_emp, nom_emp, salario, nom_dep, nom_centro;
  DBMS_OUTPUT.PUT_LINE(N_Empleado || RPAD(Espacio_blanco, 10)|| Name_Emp || RPAD(Espacio_blanco, 10) || Sal || RPAD(Espacio_blanco, 10) || Name_Dpto || RPAD(Espacio_blanco, 10) || Name_Centro);

  WHILE empleados%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE(n_emp || RPAD(Espacio_blanco, 17) || nom_emp || RPAD(Espacio_blanco, 10) || salario || RPAD(Espacio_blanco, 13) || nom_dep || RPAD(Espacio_blanco, 9) || nom_centro);
    FETCH empleados INTO n_emp, nom_emp, salario, nom_dep, nom_centro;
  END LOOP;

  CLOSE empleados;

END;
/

Pruebas:

CREATE OR REPLACE PROCEDURE prueba_listado_empleados (num_dep integer)

AS

BEGIN
  Listado_Empleados(num_dep);

END;
/

Bloque anónimo:

DECLARE
  num_dep integer;

BEGIN
  num_dep:='&num_dep';
  prueba_listado_empleados(num_dep);

END;
/