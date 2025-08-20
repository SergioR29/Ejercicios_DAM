DECLARE
  presupuesto integer;
  datos TDEPTO%ROWTYPE;
  borrados integer;

  CURSOR cursor (presupuesto integer) IS
    SELECT *
    FROM TDEPTO
    WHERE Presu < presupuesto;

BEGIN
  presupuesto:='&pr';
  SELECT Count(*) INTO borrados
  FROM TDEPTO
  WHERE Presu < presupuesto;

  DBMS_OUTPUT.PUT_LINE('Datos de los departamentos que se han borrado ' || '(' || borrados || '):');
  DBMS_OUTPUT.PUT_LINE('________________________________________________');
  OPEN cursor(presupuesto);
  FETCH cursor INTO datos;

   WHILE cursor%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE('Número de departamento: ' || datos.numde || '   Número de centro: ' || datos.numce || '     Director: ' || datos.direc || '   ¿En propiedad o en funciones?: ' || datos.tidir || '   Presupuesto: ' || datos.presu || '   Depende del departamento: ' || datos.depde || '   Nombre del departamento: ' || datos.nomde);
    FETCH cursor INTO datos;
   END LOOP;

  CLOSE cursor;

  DELETE FROM TDEPTO
  WHERE Presu < presupuesto;

END;
/
