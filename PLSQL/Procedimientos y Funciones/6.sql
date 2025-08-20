CREATE OR REPLACE FUNCTION existe_empleado (num IN integer) RETURN boolean

AS
  dep INTEGER;

BEGIN

SELECT NUMEM INTO dep
FROM TEMPLE
WHERE NUMEM=num;

RETURN true;

EXCEPTION

  WHEN NO_DATA_FOUND THEN RETURN false;

END;
/


Llamada a la función:


DECLARE
  num INTEGER;

BEGIN
  num:='&n';

  IF existe_empleado(num) THEN
    DBMS_OUTPUT.PUT_LINE('El empleado ' || num || ' existe');
  ELSE
    DBMS_OUTPUT.PUT_LINE('El empleado ' || num || ' no existe');
  END IF;

END;
/