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

--Punto 4
CREATE PROFILE clerk LIMIT 
   SESSIONS_PER_USER          1
   FAILED_LOGIN_ATTEMPTS      3 
   IDLE_TIME                  15
   PASSWORD_LIFE_TIME         40;

CREATE PROFILE development LIMIT 
   SESSIONS_PER_USER          2
   FAILED_LOGIN_ATTEMPTS      UNLIMITED
   IDLE_TIME                  30
   PASSWORD_LIFE_TIME         100;
   
CREATE PROFILE operative LIMIT 
   SESSIONS_PER_USER          1
   FAILED_LOGIN_ATTEMPTS      4
   IDLE_TIME                  5
   PASSWORD_LIFE_TIME         30
   PASSWORD_REUSE_TIME        30
   PASSWORD_REUSE_MAX         3;
