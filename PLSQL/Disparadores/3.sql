CREATE TABLE BAJAS (
 nombre_centro_baja varchar2(50),
 fecha_baja date
);

CREATE OR REPLACE TRIGGER baja_centro
BEFORE DELETE ON TCENTR

FOR EACH ROW
BEGIN
 INSERT INTO BAJAS (nombre_centro_baja, fecha_baja) VALUES (:old.nomce, SYSDATE);
END;
/