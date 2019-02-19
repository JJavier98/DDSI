CREATE TABLE FURGONETA(
    idFurgoneta varchar2 (20) primary key,
    matricula varchar2 (10),
    estado varchar2 (20),
    idRuta varchar2(20),
    idEmpleado varchar2 (20),
    capacidad int
);

CREATE TABLE PAQUETE(
    idPaquete varchar2 (20),
    idCliente varchar2(20),
    descripcion varchar2 (280),
    origen varchar2 (20),
    destino varchar2 (20),
    estado varchar2 (20),
    idFurgoneta varchar2 (20)
);

CREATE TABLE EMPLEADO(
    idEmpleado varchar2 (20) primary key,
    nombre varchar2(20),
    apellido varchar2 (20),
    dni varchar2 (9),
    telefono int,
    direccion varchar2(20)
);
   
CREATE OR REPLACE TRIGGER inicioRuta
    BEFORE INSERT OR UPDATE idRuta ON furgoneta FOR EACH ROW
    DECLARE
        lugar_antiguo varchar2(8);
        lugar_nuevo varchar2(8);
    BEGIN
    SELECT destino into lugar_antiguo from ruta
    where ruta.idRuta = :old.idRuta;
    
    SELECT origen INTO lugar_nuevo FROM ruta
    where ruta.idRuta = :new.idRuta;
        if lugar_nuevo != lugar_antiguo then
            :new.idRuta:=null;
    END;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    