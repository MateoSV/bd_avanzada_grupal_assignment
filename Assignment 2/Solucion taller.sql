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