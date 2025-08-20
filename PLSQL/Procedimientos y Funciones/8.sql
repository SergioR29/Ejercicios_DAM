CREATE OR REPLACE PROCEDURE lep (nom_emp varchar2)

AS
  f integer;
  
BEGIN
  f:=dep_emp(nom_emp);
  list_emp_dep(f);
END;
/

CREATE OR REPLACE FUNCTION dep_emp (nom_emp varchar2) RETURN integer

AS
 CURSOR dep(nom_emp varchar2) IS
   SELECT Nomem, Numde
   FROM Temple
   WHERE Nomem=nom_emp;

num_dep integer;
nom_em varchar2(20);

BEGIN
  OPEN dep(nom_emp);
  FETCH dep INTO nom_em, num_dep;

  WHILE dep%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE('Departamento del empleado ' || nom_emp || ': ' || num_dep);
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    FETCH dep INTO nom_em, num_dep;
  END LOOP;
  CLOSE dep;

list_emp_dep(num_dep);

RETURN 1;

END;
/

CREATE OR REPLACE PROCEDURE list_emp_dep (num_dep integer)

AS
 CURSOR listado_dep_emp(num_dep integer) IS
  SELECT *
  FROM TEMPLE
  WHERE Numde=num_dep;

datos TEMPLE%ROWTYPE;

BEGIN
  OPEN listado_dep_emp(num_dep);
  FETCH listado_dep_emp INTO datos;

  WHILE listado_dep_emp%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE('NºEmpleado: ' || datos.numem ||'   Extensión Telefónica: ' || datos.extel || '   Fecha de Nacimiento: ' || datos.fecna || '   Fecha de Ingreso: ' || datos.fecin || '   Salario: ' || datos.salar || '   Comisión: ' || datos.comis || '   Nºde Hijos: ' || datos.numhi || '   Nombre del empleado: ' || datos.nomem);
    FETCH listado_dep_emp INTO datos;
  END LOOP;
  CLOSE listado_dep_emp;

  DBMS_OUTPUT.PUT_LINE(CHR(10));
  aumentar_salario(num_dep);

END;
/

CREATE OR REPLACE PROCEDURE aumentar_salario (num_dep integer)

AS
 CURSOR salario_nuevo_empleados(num_dep integer) IS
   SELECT Numem, Salar, Nomem
   FROM TEMPLE
   WHERE Numde=num_dep;

salario_nuevo integer;
N_Emp integer;
Name_Emp varchar2(20);

BEGIN

  UPDATE TEMPLE
  SET SALAR = SALAR + 200
  WHERE NUMDE=num_dep;

  OPEN salario_nuevo_empleados(num_dep);
  FETCH salario_nuevo_empleados INTO N_Emp, salario_nuevo, Name_Emp;

  IF num_dep <> 1 THEN
    DBMS_OUTPUT.PUT_LINE('Empleados con los salarios actualizados del departamento ' || num_dep || ': ' || CHR(10));
  END IF;

  WHILE salario_nuevo_empleados%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE('NºEmpleado: ' || N_Emp || '   Salario nuevo: ' || salario_nuevo || '   Nombre del empleado: ' || Name_Emp);
    FETCH salario_nuevo_empleados INTO N_Emp, salario_nuevo, Name_Emp;
  END LOOP;

END;
/

Pruebas:

CREATE OR REPLACE PROCEDURE prueba_LEP (nom_emp varchar2)

AS

BEGIN
  lep(nom_emp);

END;
/

Bloque anónimo:

DECLARE
  nom_emp varchar2(20);

BEGIN
  nom_emp:='&empleado';
  prueba_LEP(nom_emp);

EXCEPTION
  WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('No se ha encontrado al empleado que buscabas');

END;
/