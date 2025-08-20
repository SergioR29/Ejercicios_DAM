CREATE OR REPLACE FUNCTION existe_departamento (num IN integer) RETURN integer

AS
  dep INTEGER;

BEGIN

SELECT NUMDE INTO dep
FROM TDEPTO
WHERE NUMDE=num;

DBMS_OUTPUT.PUT_LINE('El departamento existe');
RETURN 1;

END;
/


Llamada a la función:


DECLARE
  num INTEGER;
  fun integer;

BEGIN
  num:='&n';
  fun:=existe_departamento(num);

EXCEPTION

  WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('El departamento no existe');

END;
/