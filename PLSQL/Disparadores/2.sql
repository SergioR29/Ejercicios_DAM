CREATE TABLE CAMBIOS (
 num_dep integer,
 presu_antiguo integer,
 presu_nuevo integer,
 fecha_mod date
);

CREATE OR REPLACE TRIGGER cambio_presupuesto
AFTER UPDATE OF presu ON TDEPTO

FOR EACH ROW
BEGIN
 INSERT INTO CAMBIOS (num_dep, presu_antiguo, presu_nuevo, fecha_mod) VALUES (:new.numde, :old.presu, :new.presu, SYSDATE);
END;
/