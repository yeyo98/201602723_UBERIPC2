CREATE TABLE empleado(
id INT NOT NULL PRIMARY KEY ,
nombre VARCHAR(15) not null,
puesto VARCHAR(15) not null
)
;

CREATE TABLE pripiedad_servicio(
id_p INT NOT NULL PRIMARY KEY ,
id1 INT NOT NULL,
FOREIGN KEY (id1) REFERENCES empleado(id),
cod_servicio1 INT NOT NULL,
FOREIGN KEY (cod_servicio1) REFERENCES servicio(cod_servicio),
)
;

CREATE TABLE servicio(
cod_servicio INT NOT NULL PRIMARY KEY ,
tipo_servicio VARCHAR NOT NULL  
)
;

CREATE TABLE servicio_prestado(
cod_servicio INT NOT NULL PRIMARY KEY ,
tipo_servicio VARCHAR NOT NULL 
)
;

alter TABLE servicio_prestado
add column descripcion VARCHAR NOT NULL;
alter table servicio_prestado 
modify tipo_servicio VARCHAR(50) NOT NULL;
alter table servicio_prestado 
add constraint id_servicio foreign key (id_servicio) references servicio(cod_servicio);

