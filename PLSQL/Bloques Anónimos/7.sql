DECLARE
  Salario_Total integer;
  num_emp integer;
  N INTEGER;

BEGIN
  num_emp:='&n';
  FOR i IN 1..10 LOOP
    SELECT COUNT(NUMEM) INTO N
    FROM TEMPLE
    WHERE NUMEM=num_emp;

    IF N<>0 THEN

    SELECT SALAR+NVL(COMIS, 0) INTO Salario_Total
    FROM TEMPLE
    WHERE NUMEM=num_emp;

    DBMS_OUTPUT.PUT_LINE('Salario total del empleado ' || num_emp || ': ' || Salario_Total);
    
    ELSE
      DBMS_OUTPUT.PUT_LINE('El empleado ' || num_emp || ' no existe');

    END IF;
     num_emp:=num_emp+10;
  END LOOP;

EXCEPTION
  WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('El empleado ' || num_emp || ' no existe');

END;
/