CREATE OR REPLACE PROCEDURE d_dep (num_dep IN TDEPTO.NUMDE%TYPE, datos_dep OUT TDEPTO%ROWTYPE)

AS
 
BEGIN
  SELECT * INTO datos_dep
  FROM TDEPTO
  WHERE NUMDE=num_dep;

  DBMS_OUTPUT.PUT_LINE('Nº de departamento: ' || datos_dep.NUMDE || ' ; Nº de centro: ' || datos_dep.NUMCE || ' ; Director del departamento: ' || datos_dep.DIREC);
  DBMS_OUTPUT.PUT_LINE('¿En propiedad o funciones?: ' || datos_dep.TIDIR || ' ; Presupuesto: ' || datos_dep.PRESU || ' ; Depende del departamento ' || datos_dep.DEPDE);
  DBMS_OUTPUT.PUT_LINE('Nombre del departamento: ' || datos_dep.NOMDE);

END;
/


Pruebas:

CREATE OR REPLACE PROCEDURE prueba_d_dep (num_dep IN integer, datos_dep OUT TDEPTO%ROWTYPE)

AS

BEGIN
  d_dep(num_dep, datos_dep);

END;
/


Bloque anónimo:

DECLARE
  num_dep integer;
  datos_dep TDEPTO%ROWTYPE;

BEGIN
  num_dep:='&n';
  prueba_d_dep(num_dep, datos_dep);

EXCEPTION
  WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('El departamento no existe');

END;
/