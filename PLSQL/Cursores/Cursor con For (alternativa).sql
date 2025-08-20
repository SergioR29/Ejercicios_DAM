CREATE OR REPLACE PROCEDURE cursor_For_variante

AS

BEGIN
  FOR r IN (SELECT nomem, numem, salar FROM TEMPLE) LOOP
    DBMS_OUTPUT.PUT_LINE(r.nomem || ‘ ‘ || r.numem || ‘ ‘ || r.salar);
  END LOOP;

END;
/
