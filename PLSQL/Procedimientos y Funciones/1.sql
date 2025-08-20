CREATE OR REPLACE PROCEDURE d_e (num_emp integer)

AS
  d_e TEMPLE%ROWTYPE;

BEGIN
 
 SELECT * INTO d_e
 FROM TEMPLE
 WHERE NUMEM=num_emp;

 DBMS_OUTPUT.PUT_LINE('NºEmpleado: ' || d_e.NUMEM || ' ; Departamento en el que trabaja: ' || d_e.NUMDE || ' ; Extensión telefónica: ' || d_e.EXTEL || ' ; Fecha de nacimiento: ' || d_e.FECNA);
 DBMS_OUTPUT.PUT_LINE('Fecha de ingreso: ' || d_e.FECIN || ' ; Salario: ' || d_e.SALAR || ' ; Comisión: ' || d_e.COMIS || ' ; Nº de hijos: ' || d_e.NUMHI || ' ; Nombre del empleado: ' || d_e.NOMEM);

EXCEPTION
  WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('El empleado no existe');

END;
/


Pruebas:


CREATE OR REPLACE PROCEDURE prueba_d_e (num_emp integer)

AS

BEGIN
 d_e(num_emp);

END;
/


Bloque anónimo:


DECLARE
  num_emp integer;

BEGIN
  num_emp:='&n';
  prueba_d_e(num_emp);

END;
/ 