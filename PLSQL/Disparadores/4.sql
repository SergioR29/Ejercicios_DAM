CREATE TABLE ACTUALIZACIONES (
  Numero_empleado integer,
  Nombre_empleado varchar2(20),
  fecha date,
  Evento varchar2(20) CHECK (Evento IN ('Alta', 'Baja', 'Actualización')),
  Salar_V integer,
  Salar_N integer
);

INSERT INTO ACTUALIZACIONES (Numero_empleado, Nombre_empleado, fecha, Evento) VALUES (:new.numem, :new.nomem, SYSDATE, 'Alta');


CREATE OR REPLACE TRIGGER actualizaciones
AFTER INSERT OR DELETE OR UPDATE ON TEMPLE

FOR EACH ROW
BEGIN
 IF UPDATING('salar') THEN
  INSERT INTO ACTUALIZACIONES (Numero_empleado, Nombre_empleado, fecha, Evento, Salar_V, Salar_N) VALUES (:new.numem, :new.nomem, SYSDATE, 'Actualización', :old.salar, :new.salar);
 END IF;

 IF UPDATING THEN
  INSERT INTO ACTUALIZACIONES (Numero_empleado, Nombre_empleado, fecha, Evento) VALUES (:new.numem, :new.nomem, SYSDATE, 'Actualización');
 END IF;

 IF DELETING THEN
  INSERT INTO ACTUALIZACIONES (Numero_empleado, Nombre_empleado, fecha, Evento) VALUES (:old.numem, :old.nomem, SYSDATE, 'Baja');
 END IF;

 IF INSERTING THEN
  INSERT INTO ACTUALIZACIONES (Numero_empleado, Nombre_empleado, fecha, Evento) VALUES (:new.numem, :new.nomem, SYSDATE, 'Alta');
 END IF;

END;
/