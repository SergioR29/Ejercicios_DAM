DECLARE
  CURSOR empleado IS
    SELECT NOMEM, FECNA, NOMDE, DIR
    FROM TEMPLE, TDEPTO, TCENTR
    WHERE TEMPLE.NUMDE=TDEPTO.NUMDE AND TDEPTO.NUMCE=TCENTR.NUMCE AND SALAR > (SELECT AVG(SALAR)
									       FROM TEMPLE);
BEGIN
  FOR r IN empleado LOOP
    DBMS_OUTPUT.PUT_LINE('Nombre del empleado: ' || r.nomem || ' , Fecha de Nacimiento: ' || r.fecna);
    DBMS_OUTPUT.PUT_LINE('Nombre del departamento: ' || r.nomde || ' , Dirección de su centro de trabajo: ' || r.dir);
    DBMS_OUTPUT.PUT_LINE('____________');
  END LOOP;

END;
/