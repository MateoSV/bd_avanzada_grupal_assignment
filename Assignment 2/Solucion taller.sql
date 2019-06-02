/*
    SOLUCION DEL TALLER
*/

--PUNTO 2
CREATE OR REPLACE VIEW plan_mantenimiento_detallado 
AS
    SELECT mant.kilometraje, it.nombre
    FROM mantenimientos mant
    INNER JOIN mantenimientodetalle mantD ON mant.mantenimiento_id = mantd.mantenimiento_id
    INNER JOIN items it ON mantd.item_id = it.item_id;
    
    SELECT * FROM plan_mantenimiento_detallado;
	

-- PUNTO 3

CREATE OR REPLACE PROCEDURE Programar_mantenimiento(id)
AS

kilometros CentroReciboCarga.centrorecibocarga_id%TYPE;
mantenimiento Mantenimientos%rowtype;
resultado integer;
centroReciboCarga Vehiculos.CentroReciboCarga_id%TYPE;
empleado Empleados.Empleado_id%TYPE;

CURSOR mantenimientos IS SELECT id,Kilometros FROM Mantenimientos;
CURSOR mantenimientos_detalle IS SELECT Detalle_id,Mantenimiento_id FROM MantenimientoDetalle;

BEGIN
SELECT Kilometraje,CentroReciboCarga_id INTO kilometros,centroReciboCarga FROM Vehiculos WHERE vehiculo_id = id;

SELECT Empleado_id into empleado from Empleados where CentroReciboCarga_id =  centroReciboCarga AND Cargo = "Mecanico";
OPEN mantenimientos;
    LOOP
        FETCH mantenimientos INTO mantenimiento;
        EXIT WHEN mantenimientos%notfound;
		
		resultado = mantenimiento.Kilometros - kilometros;
		
		IF resultado >= 0 AND resultado <= 200 THEN
		
			
		
			INSERT INTO ProgramacionMantenimiento(Vehiculo_id, fecha, Empleado_id,Mantenimiento_id)
            VALUES (id, SYSDATE + 2, empleado,mantenimiento.id);
			
			SELECT id into mant_id FROM ProgramacionMantenimiento WHERE Vehiculo_id = id AND MantenimientoDetalle_Id = mantenimiento.id;
			
			OPEN mantenimientos_detalle;	
				LOOP
					FETCH mantenimientos_detalle INTO detalle;
					EXIT WHEN mantenimientos_detalle%notfound;
					
					
					INSERT INTO ProgramacionMantenimientoDetalle(ProgramacionMantenimiento_id,Detalle_id, MantenimientoDetalle_Id, Estado)
					VALUES (mant_id, mantenimientos_detalle.Detalle_id, mantenimientos_detalle.Mantenimiento_id,mantenimiento.id,'Pendiente');
				END LOOP;
			CLOSE mantenimientos_detalle
		END IF
		
	END LOOP;
CLOSE mantenimientos;

EXCEPTION
    WHEN id <= 0 THEN
    dbms_output.put_line('Id Not Valid');

END;

-- Punto 4

CREATE OR REPLACE TRIGGER update_vehicles_km
AFTER UPDATE
   ON vehiculos
   FOR EACH ROW

BEGIN
   EXEC Programar_mantenimiento(:new.Vehiculo_id);
END;
    
--PUNTO 5
CREATE TABLE PrecioEnvio
(
    preciorecibo_id int not null,
    centro_recibo_id int not null,
    destino_id int not null,
    precio_kilo decimal,
    CONSTRAINT precioenvio_pk PRIMARY KEY (preciorecibo_id)
);

ALTER TABLE PrecioEnvio
ADD CONSTRAINT precioEnvio_centroRecibo_id_fk
  FOREIGN KEY (centro_recibo_id)
  REFERENCES CentroReciboCarga(centrorecibocarga_id);
  
ALTER TABLE PrecioEnvio
ADD CONSTRAINT precioEnvio_destino_id_fk
  FOREIGN KEY (destino_id)
  REFERENCES CodigoPostal(id);
 
 
  
CREATE OR REPLACE PROCEDURE recalcular_tarifas
IS
    id_centro_recibo CentroReciboCarga.centrorecibocarga_id%TYPE;
    id_codigo_postal CodigoPostal.id%TYPE;
    precio decimal;
    CURSOR centros_recibo IS SELECT centrorecibocarga_id FROM CentroReciboCarga;
    CURSOR codigos_postales IS SELECT id FROM CodigoPostal;
BEGIN
    
    EXECUTE IMMEDIATE 'TRUNCATE TABLE PrecioEnvio';
    
    OPEN centros_recibo;
    LOOP
        FETCH centros_recibo INTO id_centro_recibo;
        EXIT WHEN centros_recibo%notfound;
        
        OPEN codigos_postales;
        LOOP
            FETCH codigos_postales INTO id_codigo_postal;
            EXIT WHEN codigos_postales%notfound;
            
            precio := ROUND(dbms_random.value(400,1500), 3);
            
            INSERT INTO PrecioEnvio(centro_recibo_id, destino_id, precio_kilo)
            VALUES (id_centro_recibo, id_codigo_postal, precio);
            
        END LOOP;
        CLOSE codigos_postales;
        
    END LOOP;
    CLOSE centros_recibo;

END;

-- Punto 6

CREATE OR REPLACE VIEW precios_ciudades
AS
    SELECT precenv.destino_id, mun.Nombre, precenv.precio_kilo
    FROM PrecioEnvio precenv
    INNER JOIN centroReciboCarga ON precenv.centro_recibo_id = centroReciboCarga.centroReciboCarga_id
	INNER JOIN Municipios mun ON mun.id = centroReciboCarga.Municipio_id
    
-- PUNTO 7
CREATE OR REPLACE PROCEDURE recalcular_tarifas
IS
    v_alto guias.alto%TYPE;
    v_ancho guias.ancho%TYPE;
    v_largo guias.largo%TYPE;
    v_guia guias.guia_id%TYPE;
    CURSOR c_guias IS SELECT guia_id, alto, ancho, largo FROM guias;
BEGIN
    
    OPEN c_guias;
    LOOP
        FETCH c_guias INTO v_guia, v_alto, v_ancho, v_largo;
        EXIT WHEN c_guias%notfound;
        
        UPDATE  guias
        SET     volumen = v_alto * v_ancho * v_largo * 400
        WHERE   guias.guia_id = v_guia;
        
    END LOOP;
    CLOSE c_guias;

END;