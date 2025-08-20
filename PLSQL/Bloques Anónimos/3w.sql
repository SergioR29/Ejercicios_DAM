DECLARE
  CURSOR empleado IS
    SELECT NOMEM, FECNA, NOMDE, DIR
    FROM TEMPLE, TDEPTO, TCENTR
    WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TDEPTO.NUMCE=TCENTR.NUMCE AND SALAR > (SELECT AVG(SALAR)
									       FROM TEMPLE);
Nombre_Empleado varchar2(20);
nacimiento date;
departamento varchar2(20);
Direccion_Centro varchar2(30);

BEGIN
  OPEN empleado;
  FETCH empleado INTO Nombre_Empleado, nacimiento, departamento, Direccion_Centro;

  WHILE empleado%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE('Nombre del empleado: ' || Nombre_Empleado || ' , Fecha de Nacimiento: ' || nacimiento);
    DBMS_OUTPUT.PUT_LINE('Nombre del departamento: ' || departamento || ' , Dirección de su centro de trabajo: ' || Direccion_Centro);
    DBMS_OUTPUT.PUT_LINE('____________');
    FETCH empleado INTO Nombre_Empleado, nacimiento, departamento, Direccion_Centro;
  END LOOP;

  CLOSE empleado;

END;
/