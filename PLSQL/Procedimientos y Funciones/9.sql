CREATE OR REPLACE FUNCTION Factorial (num IN integer) RETURN integer

AS
  factorial integer;

BEGIN

factorial:=1;
  FOR contador IN 1..num LOOP
    factorial:=factorial*contador;
  END LOOP;

DBMS_OUTPUT.PUT_LINE('El factorial del número ' || num || ' es ' || factorial);
RETURN 1;

END;
/


Pruebas:


CREATE OR REPLACE PROCEDURE Factory (num integer)

AS
  factory integer;

BEGIN
  factory:=Factorial(num);

END;
/


Bloque anónimo:


DECLARE
  num integer;

BEGIN
  num:='&n';
  Factory(num);

END;
/
