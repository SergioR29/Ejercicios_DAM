CREATE TABLE ALTAS (
 numero_nuevo_empleado integer,
 nombre_nuevo_empleado varchar2(20),
 salario integer,
 fecha_alta date
);

CREATE OR REPLACE TRIGGER alta_empleado
AFTER INSERT ON TEMPLE

FOR EACH ROW
BEGIN
 INSERT INTO ALTAS (numero_nuevo_empleado, nombre_nuevo_empleado, salario, fecha_alta) VALUES (:new.numem, :new.nomem, :new.salar, CURRENT_DATE);
END;
/