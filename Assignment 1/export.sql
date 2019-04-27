--------------------------------------------------------
-- Archivo creado  - sábado-abril-27-2019   
--------------------------------------------------------
DROP TABLE "AMARTINEZG"."CENTRORECIBOCARGA";
DROP TABLE "AMARTINEZG"."CODIGOPOSTAL";
DROP TABLE "AMARTINEZG"."DEPARTAMENTOS";
DROP TABLE "AMARTINEZG"."EMPLEADOS";
DROP TABLE "AMARTINEZG"."ESTADOS";
DROP TABLE "AMARTINEZG"."GUIAS";
DROP TABLE "AMARTINEZG"."MANTENIMIENTODETALLE";
DROP TABLE "AMARTINEZG"."MANTENIMIENTOS";
DROP TABLE "AMARTINEZG"."MUNICIPIOS";
DROP TABLE "AMARTINEZG"."PERSONAS";
DROP TABLE "AMARTINEZG"."RASTREOS";
DROP TABLE "AMARTINEZG"."VEHICULOS";
--------------------------------------------------------
--  DDL for Table CENTRORECIBOCARGA
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."CENTRORECIBOCARGA" 
   (	"CENTRORECIBOCARGA_ID" NUMBER(*,0), 
	"CODIGO" VARCHAR2(20), 
	"NOMBRE" VARCHAR2(255), 
	"DIRECCION" VARCHAR2(255), 
	"TELEFONO" VARCHAR2(10), 
	"TIPO" VARCHAR2(100), 
	"MUNICIPIO_ID" NUMBER(*,0), 
	"EMPLEADO_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CODIGOPOSTAL
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."CODIGOPOSTAL" 
   (	"ID" NUMBER(*,0), 
	"NUMERO" VARCHAR2(6), 
	"MUNICIPIO_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DEPARTAMENTOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."DEPARTAMENTOS" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255), 
	"CODIGO" VARCHAR2(2)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLEADOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."EMPLEADOS" 
   (	"EMPLEADO_ID" NUMBER(*,0), 
	"CODIGO" VARCHAR2(20), 
	"NOMBRE" VARCHAR2(255), 
	"CEDULA" VARCHAR2(20), 
	"DIRECCION" VARCHAR2(255), 
	"TELEFONO" VARCHAR2(10), 
	"SALARIO" FLOAT(3), 
	"JEFEDIRECTO" NUMBER(*,0), 
	"CARGO" VARCHAR2(255), 
	"CENTRO_RECIBO_CARGA_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ESTADOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."ESTADOS" 
   (	"ESTADO_ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255), 
	"ENTIDAD" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table GUIAS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."GUIAS" 
   (	"GUIA_ID" NUMBER(*,0), 
	"PESO" NUMBER(9,2), 
	"ANCHO" NUMBER(9,2), 
	"LARGO" NUMBER(9,2), 
	"ALTO" NUMBER(9,2), 
	"VOLUMEN" NUMBER(9,2), 
	"TIPO_SERVICIO" VARCHAR2(100), 
	"REMITENTE" NUMBER(*,0), 
	"DESTINATARIO" NUMBER(*,0), 
	"FECHA_DESPACHO" DATE, 
	"FECHA_ENTREGA" DATE, 
	"OBSERVACIONES" VARCHAR2(255), 
	"CIUDAD_ORIGEN" NUMBER(*,0), 
	"CIUDAD_DESTINO" NUMBER(*,0), 
	"CODIGO_POSTAL_ORIGEN" NUMBER(*,0), 
	"CODIGO_POSTAL_DESTINO" NUMBER(*,0), 
	"UNIDADES" NUMBER(*,0), 
	"FLETE_FIJO" NUMBER(9,2), 
	"FLETE_VARIABLE" NUMBER(9,2), 
	"OTROS_VALORES" NUMBER(9,2), 
	"VALOR_SERVICIO" NUMBER(9,2), 
	"ESTADO_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MANTENIMIENTODETALLE
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" 
   (	"MANTENIMIENTO_ID" NUMBER(*,0), 
	"DETALLE_ID" NUMBER(*,0), 
	"REVISION" VARCHAR2(100), 
	"OBSERVACIONES" VARCHAR2(255), 
	"ESTADO_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MANTENIMIENTOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."MANTENIMIENTOS" 
   (	"MANTENIMIENTO_ID" NUMBER(*,0), 
	"VEHICULO_ID" NUMBER(*,0), 
	"FECHA" DATE, 
	"HORA_ENTRADA" VARCHAR2(10), 
	"HORA_SALIDA" VARCHAR2(10), 
	"MANTENIMIENTO" VARCHAR2(20), 
	"EMPLEADO_ID" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MUNICIPIOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."MUNICIPIOS" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255), 
	"DEPARTAMENTO_ID" NUMBER(*,0), 
	"CODIGO" VARCHAR2(5)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSONAS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."PERSONAS" 
   (	"PERSONA_ID" NUMBER(*,0), 
	"DOCUMENTO" VARCHAR2(20), 
	"NOMBRE" VARCHAR2(255), 
	"TELEFONO" VARCHAR2(20), 
	"DIRECCION" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table RASTREOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."RASTREOS" 
   (	"RASTREO_ID" NUMBER(*,0), 
	"GUIA_ID" NUMBER(*,0), 
	"ESTADO_ID" NUMBER(*,0), 
	"FECHA" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table VEHICULOS
--------------------------------------------------------

  CREATE TABLE "AMARTINEZG"."VEHICULOS" 
   (	"VEHICULO_ID" NUMBER(*,0), 
	"MARCA" VARCHAR2(100), 
	"MODELO" VARCHAR2(4), 
	"LINEA" VARCHAR2(255), 
	"TIPO_COMBUSTIBLE" VARCHAR2(10), 
	"KILOMETRAJE" VARCHAR2(30), 
	"CAPACIDAD" VARCHAR2(10), 
	"CENTRO_RECIBO_CARGA_ID" NUMBER(*,0)
   ) ;
REM INSERTING into AMARTINEZG.CENTRORECIBOCARGA
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.CODIGOPOSTAL
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.DEPARTAMENTOS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.EMPLEADOS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.ESTADOS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.GUIAS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.MANTENIMIENTODETALLE
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.MANTENIMIENTOS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.MUNICIPIOS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.PERSONAS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.RASTREOS
SET DEFINE OFF;
REM INSERTING into AMARTINEZG.VEHICULOS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CENTRORECIBOCARGA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."CENTRORECIBOCARGA_PK" ON "AMARTINEZG"."CENTRORECIBOCARGA" ("CENTRORECIBOCARGA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CODIGOPOSTAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."CODIGOPOSTAL_PK" ON "AMARTINEZG"."CODIGOPOSTAL" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index DEPARTAMENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."DEPARTAMENTOS_PK" ON "AMARTINEZG"."DEPARTAMENTOS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index EMPLEADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."EMPLEADOS_PK" ON "AMARTINEZG"."EMPLEADOS" ("EMPLEADO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ESTADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."ESTADOS_PK" ON "AMARTINEZG"."ESTADOS" ("ESTADO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GUIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."GUIA_PK" ON "AMARTINEZG"."GUIAS" ("GUIA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MANTENIMIENTODETALLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."MANTENIMIENTODETALLE_PK" ON "AMARTINEZG"."MANTENIMIENTODETALLE" ("MANTENIMIENTO_ID", "DETALLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MANTENIMIENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."MANTENIMIENTOS_PK" ON "AMARTINEZG"."MANTENIMIENTOS" ("MANTENIMIENTO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MUNICIPIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."MUNICIPIOS_PK" ON "AMARTINEZG"."MUNICIPIOS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PERSONAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."PERSONAS_PK" ON "AMARTINEZG"."PERSONAS" ("PERSONA_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RASTREOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."RASTREOS_PK" ON "AMARTINEZG"."RASTREOS" ("RASTREO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index VEHICULO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AMARTINEZG"."VEHICULO_PK" ON "AMARTINEZG"."VEHICULOS" ("VEHICULO_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table CENTRORECIBOCARGA
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("CENTRORECIBOCARGA_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("MUNICIPIO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" ADD CONSTRAINT "CENTRORECIBOCARGA_PK" PRIMARY KEY ("CENTRORECIBOCARGA_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CODIGOPOSTAL
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."CODIGOPOSTAL" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CODIGOPOSTAL" MODIFY ("NUMERO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CODIGOPOSTAL" MODIFY ("MUNICIPIO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."CODIGOPOSTAL" ADD CONSTRAINT "CODIGOPOSTAL_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTAMENTOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."DEPARTAMENTOS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."DEPARTAMENTOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."DEPARTAMENTOS" ADD CONSTRAINT "DEPARTAMENTOS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "AMARTINEZG"."DEPARTAMENTOS" MODIFY ("CODIGO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("CEDULA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("SALARIO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("JEFEDIRECTO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("CARGO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" MODIFY ("CENTRO_RECIBO_CARGA_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" ADD CONSTRAINT "EMPLEADOS_PK" PRIMARY KEY ("EMPLEADO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."ESTADOS" MODIFY ("ESTADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."ESTADOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."ESTADOS" MODIFY ("ENTIDAD" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."ESTADOS" ADD CONSTRAINT "ESTADOS_PK" PRIMARY KEY ("ESTADO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table GUIAS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("GUIA_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("PESO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("ANCHO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("LARGO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("ALTO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("VOLUMEN" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("TIPO_SERVICIO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("REMITENTE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("DESTINATARIO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("FECHA_DESPACHO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("FECHA_ENTREGA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("CIUDAD_ORIGEN" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("CIUDAD_DESTINO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("CODIGO_POSTAL_ORIGEN" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("CODIGO_POSTAL_DESTINO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("UNIDADES" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("FLETE_FIJO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("FLETE_VARIABLE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("OTROS_VALORES" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("VALOR_SERVICIO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" MODIFY ("ESTADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_PK" PRIMARY KEY ("GUIA_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MANTENIMIENTODETALLE
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" MODIFY ("MANTENIMIENTO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" MODIFY ("DETALLE_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" MODIFY ("REVISION" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" MODIFY ("OBSERVACIONES" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" MODIFY ("ESTADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" ADD CONSTRAINT "MANTENIMIENTODETALLE_PK" PRIMARY KEY ("MANTENIMIENTO_ID", "DETALLE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MANTENIMIENTOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("MANTENIMIENTO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("VEHICULO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("HORA_ENTRADA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("HORA_SALIDA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("MANTENIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" ADD CONSTRAINT "MANTENIMIENTOS_PK" PRIMARY KEY ("MANTENIMIENTO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MUNICIPIOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."MUNICIPIOS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MUNICIPIOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MUNICIPIOS" MODIFY ("DEPARTAMENTO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."MUNICIPIOS" ADD CONSTRAINT "MUNICIPIOS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
  ALTER TABLE "AMARTINEZG"."MUNICIPIOS" MODIFY ("CODIGO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSONAS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."PERSONAS" MODIFY ("PERSONA_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."PERSONAS" MODIFY ("DOCUMENTO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."PERSONAS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."PERSONAS" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."PERSONAS" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."PERSONAS" ADD CONSTRAINT "PERSONAS_PK" PRIMARY KEY ("PERSONA_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table RASTREOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."RASTREOS" MODIFY ("RASTREO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."RASTREOS" MODIFY ("GUIA_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."RASTREOS" MODIFY ("ESTADO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."RASTREOS" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."RASTREOS" ADD CONSTRAINT "RASTREOS_PK" PRIMARY KEY ("RASTREO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table VEHICULOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("VEHICULO_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("MARCA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("MODELO" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("LINEA" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("TIPO_COMBUSTIBLE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("KILOMETRAJE" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("CAPACIDAD" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" MODIFY ("CENTRO_RECIBO_CARGA_ID" NOT NULL ENABLE);
  ALTER TABLE "AMARTINEZG"."VEHICULOS" ADD CONSTRAINT "VEHICULO_PK" PRIMARY KEY ("VEHICULO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CENTRORECIBOCARGA
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" ADD CONSTRAINT "CENTRORECIBOCARGA_MUNICIPIO_ID_FK" FOREIGN KEY ("MUNICIPIO_ID")
	  REFERENCES "AMARTINEZG"."MUNICIPIOS" ("ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."CENTRORECIBOCARGA" ADD CONSTRAINT "CENTRORECIBOCARGA_EMPLEADO_ID_FK" FOREIGN KEY ("EMPLEADO_ID")
	  REFERENCES "AMARTINEZG"."EMPLEADOS" ("EMPLEADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CODIGOPOSTAL
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."CODIGOPOSTAL" ADD CONSTRAINT "CODIGOPOSTAL_MUNICIPIO_ID_FK" FOREIGN KEY ("MUNICIPIO_ID")
	  REFERENCES "AMARTINEZG"."MUNICIPIOS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."EMPLEADOS" ADD CONSTRAINT "EMPLEADO_JEFEDIRECTO_FK" FOREIGN KEY ("JEFEDIRECTO")
	  REFERENCES "AMARTINEZG"."EMPLEADOS" ("EMPLEADO_ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."EMPLEADOS" ADD CONSTRAINT "EMPLEADO_CENTRORECIBOCARGA_ID_FK" FOREIGN KEY ("CENTRO_RECIBO_CARGA_ID")
	  REFERENCES "AMARTINEZG"."CENTRORECIBOCARGA" ("CENTRORECIBOCARGA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GUIAS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_REMITENTE_ID_FK" FOREIGN KEY ("REMITENTE")
	  REFERENCES "AMARTINEZG"."PERSONAS" ("PERSONA_ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_DESTINATARIO_ID_FK" FOREIGN KEY ("DESTINATARIO")
	  REFERENCES "AMARTINEZG"."PERSONAS" ("PERSONA_ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_CIUDAD_ORIGEN_ID_FK" FOREIGN KEY ("CIUDAD_ORIGEN")
	  REFERENCES "AMARTINEZG"."MUNICIPIOS" ("ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_CIUDAD_DESTINO_ID_FK" FOREIGN KEY ("CIUDAD_DESTINO")
	  REFERENCES "AMARTINEZG"."MUNICIPIOS" ("ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_CODIGOPOSTAL_ORIGEN_ID_FK" FOREIGN KEY ("CODIGO_POSTAL_ORIGEN")
	  REFERENCES "AMARTINEZG"."CODIGOPOSTAL" ("ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_CODIGOPOSTAL_DESTINO_ID_FK" FOREIGN KEY ("CODIGO_POSTAL_DESTINO")
	  REFERENCES "AMARTINEZG"."CODIGOPOSTAL" ("ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."GUIAS" ADD CONSTRAINT "GUIA_ESTADO_ID_FK" FOREIGN KEY ("ESTADO_ID")
	  REFERENCES "AMARTINEZG"."ESTADOS" ("ESTADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MANTENIMIENTODETALLE
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" ADD CONSTRAINT "MANTENIMIENTODETALLE_ESTADO_ID_FK" FOREIGN KEY ("ESTADO_ID")
	  REFERENCES "AMARTINEZG"."ESTADOS" ("ESTADO_ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."MANTENIMIENTODETALLE" ADD CONSTRAINT "MANTENIMIENTODETALLE_MANTENIMIENTO_ID_FK" FOREIGN KEY ("MANTENIMIENTO_ID")
	  REFERENCES "AMARTINEZG"."MANTENIMIENTOS" ("MANTENIMIENTO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MANTENIMIENTOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."MANTENIMIENTOS" ADD CONSTRAINT "MANTENIMIENTO_EMPLEADO_ID_FK" FOREIGN KEY ("EMPLEADO_ID")
	  REFERENCES "AMARTINEZG"."EMPLEADOS" ("EMPLEADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUNICIPIOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."MUNICIPIOS" ADD CONSTRAINT "MUNICIPIO_DEPARTAMENTO_ID_FK" FOREIGN KEY ("DEPARTAMENTO_ID")
	  REFERENCES "AMARTINEZG"."DEPARTAMENTOS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RASTREOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."RASTREOS" ADD CONSTRAINT "RASTREO_GUIA_ID_FK" FOREIGN KEY ("GUIA_ID")
	  REFERENCES "AMARTINEZG"."GUIAS" ("GUIA_ID") ENABLE;
  ALTER TABLE "AMARTINEZG"."RASTREOS" ADD CONSTRAINT "RASTREO_ESTADO_ID_FK" FOREIGN KEY ("ESTADO_ID")
	  REFERENCES "AMARTINEZG"."ESTADOS" ("ESTADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VEHICULOS
--------------------------------------------------------

  ALTER TABLE "AMARTINEZG"."VEHICULOS" ADD CONSTRAINT "VEHICULO_CENTRORECIBOCARGA_ID_FK" FOREIGN KEY ("CENTRO_RECIBO_CARGA_ID")
	  REFERENCES "AMARTINEZG"."CENTRORECIBOCARGA" ("CENTRORECIBOCARGA_ID") ENABLE;
