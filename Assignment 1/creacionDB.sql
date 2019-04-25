CREATE TABLE Departamentos
(
  id int not null,
  nombre varchar2(255) not null,
  CONSTRAINT departamentos_pk PRIMARY KEY (id)
);

CREATE TABLE Municipios
(
  id int not null,
  nombre varchar2(255) not null,
  departamento_id int not null,
  CONSTRAINT municipios_pk PRIMARY KEY (id)
);

ALTER TABLE Municipios
ADD CONSTRAINT Municipio_departamento_id_fk
  FOREIGN KEY (departamento_id)
  REFERENCES Departamentos(id);
  
CREATE TABLE CodigoPostal
(
  id int not null,
  numero varchar2(6) not null,
  municipio_id int not null,
  CONSTRAINT codigopostal_pk PRIMARY KEY (id)
);

ALTER TABLE CodigoPostal
ADD CONSTRAINT codigopostal_municipio_id_fk
  FOREIGN KEY (municipio_id)
  REFERENCES Municipios(id);
  
CREATE TABLE Personas
(
  persona_id int not null,
  documento varchar2(20) not null,
  nombre varchar2(255) not null,
  telefono varchar2(20) not null,
  direccion varchar2(255) not null,
  CONSTRAINT personas_pk PRIMARY KEY (persona_id)
);

CREATE TABLE Empleados
(
  empleado_id int not null,
  codigo varchar2(20) not null,
  nombre varchar2(255) not null,
  cedula varchar2(20) not null,
  direccion varchar2(255) not null,
  telefono varchar2(10) not null,
  salario float(3) not null,
  jefedirecto int not null,
  cargo varchar2(255) not null,
  centro_recibo_carga_id int not null,
  CONSTRAINT empleados_pk PRIMARY KEY (empleado_id)
);

ALTER TABLE Empleados
ADD CONSTRAINT empleado_jefedirecto_fk
  FOREIGN KEY (jefedirecto)
  REFERENCES Empleados(empleado_id);

CREATE TABLE CentroReciboCarga
(
  centrorecibocarga_id int not null,
  codigo varchar2(20) not null,
  nombre varchar2(255) not null,
  direccion varchar2(255) not null,
  telefono varchar2(10) not null,
  tipo varchar2(100) not null,
  municipio_id int not null,
  empleado_id int not null,
  CONSTRAINT centrorecibocarga_pk PRIMARY KEY (centrorecibocarga_id)
);

ALTER TABLE CentroReciboCarga
ADD CONSTRAINT CentroReciboCarga_municipio_id_fk
  FOREIGN KEY (municipio_id)
  REFERENCES Municipios(id);
  
ALTER TABLE CentroReciboCarga
ADD CONSTRAINT CentroReciboCarga_empleado_id_fk
  FOREIGN KEY (empleado_id)
  REFERENCES Empleados(empleado_id);
  
--Relacion entre Empleados y CentroReciboCarga
ALTER TABLE Empleados
ADD CONSTRAINT empleado_CentroReciboCarga_id_fk
  FOREIGN KEY (centro_recibo_carga_id)
  REFERENCES CentroReciboCarga(centrorecibocarga_id);
  
CREATE TABLE Estados
(
  estado_id int not null,
  nombre varchar2(255) not null,
  entidad varchar2(255) not null,
  CONSTRAINT estados_pk PRIMARY KEY (Estado_id)
);

CREATE TABLE Vehiculos
(
  vehiculo_id int not null,
  marca varchar2(100) not null,
  modelo varchar2(4) not null,
  linea varchar2(255) not null,
  tipo_combustible varchar2(10) not null,
  kilometraje varchar2(30) not null,
  capacidad varchar2(10) not null,
  centro_recibo_carga_id int not null,
  CONSTRAINT vehiculo_pk PRIMARY KEY (vehiculo_id)
);

ALTER TABLE Vehiculos
ADD CONSTRAINT vehiculo_CentroReciboCarga_id_fk
  FOREIGN KEY (centro_recibo_carga_id)
  REFERENCES CentroReciboCarga(centrorecibocarga_id);

CREATE TABLE Mantenimientos
(
  mantenimiento_id int not null,
  vehiculo_id int not null,
  fecha date not null,
  hora_entrada varchar2(10) not null,
  hora_salida varchar2(10) not null,
  mantenimiento varchar2(20) not null,
  empleado_id int not null,
  CONSTRAINT mantenimientos_pk PRIMARY KEY (mantenimiento_id)
);

ALTER TABLE Mantenimientos
ADD CONSTRAINT mantenimiento_empleado_id_fk
  FOREIGN KEY (empleado_id)
  REFERENCES Empleados(empleado_id);
  
CREATE TABLE MantenimientoDetalle
(
  mantenimiento_id int not null,
  detalle_id int not null,
  revision varchar2(100) not null,
  observaciones varchar2(255),
  estado_id int not null,
  CONSTRAINT mantenimientoDetalle_pk PRIMARY KEY (mantenimiento_id, detalle_id)
);

ALTER TABLE MantenimientoDetalle
ADD CONSTRAINT MantenimientoDetalle_mantenimiento_id_fk
  FOREIGN KEY (mantenimiento_id)
  REFERENCES Mantenimientos(mantenimiento_id);

ALTER TABLE MantenimientoDetalle
ADD CONSTRAINT MantenimientoDetalle_estado_id_fk
  FOREIGN KEY (estado_id)
  REFERENCES Estados(estado_id);
  
CREATE TABLE Guias
(
  guia_id int not null,
  peso numeric(9,2) not null,
  ancho numeric(9,2) not null,
  largo numeric(9,2) not null,
  alto numeric(9,2) not null,
  volumen numeric(9,2) not null,
  tipo_servicio varchar2(100) not null,
  remitente int not null,
  destinatario int not null,
  fecha_despacho date not null,
  fecha_entrega date not null,
  observaciones varchar2(255),
  ciudad_origen int not null,
  ciudad_destino int not null,
  codigo_postal_origen int not null,
  codigo_postal_destino int not null,
  unidades int not null,
  flete_fijo numeric(9,2) not null,
  flete_variable numeric(9,2) not null,
  otros_valores numeric(9,2) not null,
  valor_servicio numeric(9,2) not null,
  estado_id int not null,
  CONSTRAINT guia_pk PRIMARY KEY (guia_id)
);

ALTER TABLE Guias
ADD CONSTRAINT guia_remitente_id_fk
  FOREIGN KEY (remitente)
  REFERENCES Personas(persona_id);
  
ALTER TABLE Guias
ADD CONSTRAINT guia_destinatario_id_fk
  FOREIGN KEY (destinatario)
  REFERENCES Personas(persona_id);
  
ALTER TABLE Guias
ADD CONSTRAINT guia_ciudad_origen_id_fk
  FOREIGN KEY (ciudad_origen)
  REFERENCES Municipios(id);
  
ALTER TABLE Guias
ADD CONSTRAINT guia_ciudad_destino_id_fk
  FOREIGN KEY (ciudad_destino)
  REFERENCES Municipios(id);
  
ALTER TABLE Guias
ADD CONSTRAINT guia_codigopostal_origen_id_fk
  FOREIGN KEY (codigo_postal_origen)
  REFERENCES CodigoPostal(id);
  
ALTER TABLE Guias
ADD CONSTRAINT guia_codigopostal_destino_id_fk
  FOREIGN KEY (codigo_postal_destino)
  REFERENCES CodigoPostal(id);
  
ALTER TABLE Guias
ADD CONSTRAINT guia_estado_id_fk
  FOREIGN KEY (estado_id)
  REFERENCES Estados(estado_id);

CREATE TABLE Rastreos
(
  rastreo_id int not null,
  guia_id int not null,
  estado_id int not null,
  fecha date not null,
  CONSTRAINT rastreos_pk PRIMARY KEY (rastreo_id)
);

ALTER TABLE Rastreos
ADD CONSTRAINT rastreo_guia_id_fk
  FOREIGN KEY (guia_id)
  REFERENCES Guias(guia_id);

ALTER TABLE Rastreos
ADD CONSTRAINT rastreo_estado_id_fk
  FOREIGN KEY (estado_id)
  REFERENCES Estados(estado_id);

