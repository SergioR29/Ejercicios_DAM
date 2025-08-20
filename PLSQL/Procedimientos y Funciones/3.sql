CREATE OR REPLACE FUNCTION d_dep_F (num_dep IN OUT TDEPTO.NUMDE%TYPE) RETURN TDEPTO%ROWTYPE

AS
 datos_dep TDEPTO%ROWTYPE;

BEGIN
  SELECT * INTO datos_dep
  FROM TDEPTO
  WHERE NUMDE=num_dep;

  DBMS_OUTPUT.PUT_LINE('Nº de departamento: ' || datos_dep.NUMDE || ' ; Nº de centro: ' || datos_dep.NUMCE || ' ; Director del departamento: ' || datos_dep.DIREC);
  DBMS_OUTPUT.PUT_LINE('¿En propiedad o funciones?: ' || datos_dep.TIDIR || ' ; Presupuesto: ' || datos_dep.PRESU || ' ; Depende del departamento ' || datos_dep.DEPDE);
  DBMS_OUTPUT.PUT_LINE('Nombre del departamento: ' || datos_dep.NOMDE);

  RETURN datos_dep;

END;
/


Pruebas:


CREATE OR REPLACE PROCEDURE prueba_d_dep_F (num_dep IN OUT integer)

AS
 funcion TDEPTO%ROWTYPE;

BEGIN
  funcion:=d_dep_F(num_dep);

END;
/


Bloque anónimo:


DECLARE
  num_dep integer;

BEGIN
  num_dep:='&n';
  prueba_d_dep_F(num_dep);

END;
/