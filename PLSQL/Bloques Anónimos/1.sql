DECLARE
  Dd TDEPTO%ROWTYPE;
  Dnc VARCHAR2(30);

BEGIN
  
  SELECT * INTO Dd
  FROM TDEPTO
  WHERE NUMDE=100;

  SELECT NOMCE INTO Dnc
  FROM TCENTR
  WHERE NUMCE=Dd.NUMCE;

  DBMS_OUTPUT.PUT_LINE('Número de departamento: ' || Dd.NUMDE);
  DBMS_OUTPUT.PUT_LINE('Número de centro de trabajo: ' || Dd.NUMCE);
  DBMS_OUTPUT.PUT_LINE('Director del departamento: el empleado ' || Dd.DIREC);
  DBMS_OUTPUT.PUT_LINE('¿En propiedad o en funciones?: ' || Dd.TIDIR);
  DBMS_OUTPUT.PUT_LINE('Presupuesto del departamento: ' || Dd.PRESU);
  DBMS_OUTPUT.PUT_LINE('Depende del departamento ' || Dd.DEPDE);
  DBMS_OUTPUT.PUT_LINE('Nombre del departamento: ' || Dd.NOMDE);
  DBMS_OUTPUT.PUT_LINE('Nombre de su centro de trabajo: ' || Dnc);

END;
/