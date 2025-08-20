CREATE OR REPLACE PROCEDURE cursor_For

AS
  CURSOR datos_e IS 
    SELECT nomem, numem, salar
    FROM Temple;

BEGIN
  FOR r IN datos_e LOOP
    DBMS_OUTPUT.PUT_LINE(r.nomem || ‘ ‘ || r.numem || ‘ ‘ || r.salar);
  END LOOP;

END;
/
