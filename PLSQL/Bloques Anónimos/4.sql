DECLARE
  num_dep integer;
  director varchar2(20);
  num_director integer;
  presupuesto integer;
  num_centro integer;
  centro varchar2(30);

BEGIN
  num_dep:='&n';

  SELECT Numde, Direc, Presu, Numce INTO num_dep, num_director, presupuesto, num_centro
  FROM TDEPTO
  WHERE Numde=num_dep;

  SELECT Nomem INTO director
  FROM TEMPLE
  WHERE Numem=num_director;

  SELECT Nomce INTO centro
  FROM TCENTR
  WHERE Numce=num_centro;

  DBMS_OUTPUT.PUT_LINE('Director: ' || director || ' ; Presupuesto: ' || presupuesto || ' ; Centro de trabajo: ' || centro);

EXCEPTION
  WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('El departamento no existe');

END;
/