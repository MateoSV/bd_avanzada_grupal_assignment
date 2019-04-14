--Punto 2
CREATE TABLESPACE coordinadora DATAFILE 'datafile_01' SIZE 3G;
CREATE UNDO TABLESPACE undo_coordinadora DATAFILE 'datafile_02' SIZE 100M;
ALTER SYSTEM SET UNDO_TABLESPACE = undo_coordinadora;
CREATE BIGFILE TABLESPACE big_coordinadora DATAFILE 'datafile_03' size 4G;

--Punto 3
alter session set "_oracle_script" = true

CREATE USER amartinezg IDENTIFIED BY amartinezg
DEFAULT TABLESPACE coordinadora
QUOTA UNLIMITED ON coordinadora;

GRANT DBA TO amartinezg; -- REVISAR ESTA PARTE. PARA QUE EL USUARIO VEA LOS SYSTEMS

