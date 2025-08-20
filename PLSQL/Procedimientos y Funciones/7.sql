DECLARE
  num_emp integer;
  num_dep integer;
  datos_dep TDEPTO%ROWTYPE;

BEGIN
  num_emp:='&n';

  SELECT NUMDE INTO num_dep
  FROM TEMPLE
  WHERE NUMEM=num_emp;

  prueba_d_e(num_emp);
  DBMS_OUTPUT.PUT_LINE('=================================================================================================================');
  prueba_d_dep(num_dep, datos_dep);

EXCEPTION
  WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('El empleado no existe');

END;
/