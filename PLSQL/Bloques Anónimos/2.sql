DECLARE
  hijos INTEGER;
  salario NUMBER;
  N_Emp NUMBER;
  nombre VARCHAR2(30);
  
BEGIN
  
  N_Emp:='&s';

  SELECT NUMHI INTO hijos
  FROM TEMPLE
  WHERE NUMEM=N_Emp;

  IF hijos >= 3 THEN
    
    UPDATE TEMPLE
    SET SALAR = SALAR + 300
    WHERE NUMEM=N_Emp;
  
  ELSE
  
    UPDATE TEMPLE
    SET SALAR = SALAR + 100
    WHERE NUMEM=N_Emp;

  END IF;

  SELECT NOMEM, SALAR INTO nombre, salario
  FROM TEMPLE
  WHERE NUMEM=N_Emp;

  DBMS_OUTPUT.PUT_LINE('Nombre del empleado: ' || nombre || ' ; Su nuevo salario: ' || salario);

END;
/