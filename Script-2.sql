create schema practicaSQL_ authorization wpssluua

-- Crear la tabla tipos de vehiculos (TiposVehiculos)
create table practicasql_.TiposVehiculos(
id_vehiculo varchar(10) not null, --PK
modelo varchar (20) not null,
grupo_empresarial varchar(20) not null,
marca varchar(20) not null,
constraint TiposVehiculos_PK primary key(id_vehiculo)
);

-- Crear la tabla Coches
create table practicasql_.Coches(
id_coche varchar(10) not null, --PK
id_vehiculo varchar(10) not null, --PK-FK
id_seguro varchar(10) not null, --PK-FK
id_revision varchar(10) not null, --PK-FK
id_color varchar(10) not null, --PK-FK
matricula varchar(10) not null,
kms integer not null,
fecha_compra date not null,
constraint Coches_PK primary key (id_coche)
);

-- Crear la tabla seguros 
create table practicasql_.Seguro(
id_seguro varchar(10) not null, --PK
num_poliza varchar(20) not null,
compania varchar(20) not null,
constraint Seguro_PK primary key(id_seguro)
);

-- Crear tabla revisiones
create table practicasql_.Revision(
id_revision varchar(20) not null, --PK 
id_moneda varchar(10) not null,
importe decimal not null,
fecha_revision date not null,
km integer not null,
constraint Revision_PK primary key (id_revision)
);

-- Crear tabla colores  -- Para unificar mayus, minis, evitar que se metan más variedad de colores
create table practicasql_.Colores(
id_color varchar(10) not null, --PK
color varchar(20) not null,
constraint Colores_PK primary key (id_color)
);



--Crear la tabla monedas
create table practicasql_.Monedas(
id_moneda varchar(10) not null, --PK
moneda varchar(20) not null,
codigo_iso varchar(5) not null,
constraint Monedas_PK primary key (id_moneda)
);

--Editar FK en la tabla coches
alter table practicasql_.Coches
	add constraint vehiculo_FK foreign key (id_vehiculo)
	references practicasql_.TiposVehiculos (id_vehiculo);

alter table practicasql_.Coches
	add constraint seguro_FK foreign key (id_seguro)
	references practicasql_.Seguro (id_seguro);

alter table practicasql_.Coches
	add constraint revision_FK foreign key (id_revision)
	references practicasql_.Revision (id_revision);

alter table practicasql_.Coches
	add constraint color_FK foreign key (id_color)
	references practicasql_.Colores (id_color);

-- editar tabla revisiones
alter table practicasql_.Revision
	add constraint moneda_FK foreign key (id_moneda)
	references practicasql_.Monedas (id_moneda);





-- AÑADIR DATOS A LAS TABLAS

-- Añadir datos a la tabla colores
INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P001', 'Gris');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P002', 'Gris Perla');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P003', 'Gris Marengo');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P004', 'Negro');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P005', 'Blanco');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P006', 'Blanco perla');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P007', 'Rojo');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P008', 'Verde');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P009', 'Azul Marino');

INSERT INTO practicasql_.Colores
	(id_color, color)
	VALUES('P010', 'Azul claro');



-- Añadir datos en la tabla tiposvehiculos
INSERT INTO practicasql_.TiposVehiculos
	(id_vehiculo, modelo, grupo_empresarial, marca)
	VALUES('V001', 'X3', 'BMW Group', 'BMW');

INSERT INTO practicasql_.TiposVehiculos
	(id_vehiculo, modelo, grupo_empresarial, marca)
	VALUES('V002', 'iX', 'BMW Group', 'BMW');

INSERT INTO practicasql_.TiposVehiculos
	(id_vehiculo, modelo, grupo_empresarial, marca)
	VALUES('V003', 'Arona', 'Volkswagen AG', 'Seat');

INSERT INTO practicasql_.TiposVehiculos
	(id_vehiculo, modelo, grupo_empresarial, marca)
	VALUES('V004', 'Ateca', 'Volkswagen AG', 'Seat');

-- Añadir datos seguros
INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S001', '455532', 'AXA');

INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S002', '455533', 'AXA');

INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S003', '233522A', 'MAFRE');

INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S004', '234523I', 'MAFRE');

INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S005', 'AZ9993', 'ALLIANZ');

INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S006', 'AZ9991', 'ALLIANZ');

INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S007', 'AZ9992', 'ALLIANZ');
	
INSERT INTO practicasql_.Seguro
	(id_seguro, num_poliza, compania)
	VALUES('S008', 'AZ9944', 'ALLIANZ');
	
-- Insertar tipos de moneda tabla monedas
INSERT INTO practicasql_.Monedas
	(id_moneda, moneda, codigo_iso)
	VALUES('M01', 'euro', 'EUR');

INSERT INTO practicasql_.Monedas
	(id_moneda, moneda, codigo_iso)
	VALUES('M02', 'libra esterlina', 'GBP');

INSERT INTO practicasql_.Monedas
	(id_moneda, moneda, codigo_iso)
	VALUES('M03', 'dolar estadounidense', 'USD');

INSERT INTO practicasql_.Monedas
	(id_moneda, moneda, codigo_iso)
	VALUES('M04', 'corona danesa', 'KR');

INSERT INTO practicasql_.Monedas
	(id_moneda, moneda, codigo_iso)
	VALUES('M05', 'corona noruega', 'NOK');


-- Añadir datos tabla revision
INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R001', 'M01', '55.35', '2022-10-05', '15000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R002', 'M01', '55.35', '2022-10-06', '15000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R003', 'M01', '55.35', '2022-10-07', '15000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R004', 'M01', '70.95', '2022-12-03', '30000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R005', 'M01', '70.95', '2022-12-03', '30000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R006', 'M01', '70.95', '2022-12-03', '30000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R007', 'M02', '96.34', '2022-08-11', '45000');

INSERT INTO practicasql_.Revision
	(id_revision, id_moneda, importe, fecha_revision, km)
	VALUES('R008', 'M02', '96.34', '2022-08-11', '45000');


-- Añadir datos tabla coches
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C001', 'V001', 'S001', 'R001', 'P004', '5353FGH', '19000', '2020-10-01');
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C002', 'V001', 'S002', 'R002', 'P004', '7894JVL', '18000', '2020-10-01');	
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C003', 'V002', 'S003', 'R003', 'P001', '2738JTC', '21000', '2020-10-01');
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C004', 'V002', 'S004', 'R004', 'P002', '5638JMV', '30900', '2021-01-25');
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C005', 'V003', 'S005', 'R005', 'P002', '9848LMV', '35000', '2021-01-25');
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C006', 'V003', 'S006', 'R006', 'P003', '3334LBZ', '37000', '2021-01-25');
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C007', 'V004', 'S007', 'R007', 'P006', '0092MMA', '46000', '2020-10-01');
	
INSERT INTO practicasql_.Coches
	(id_coche, id_vehiculo, id_seguro, id_revision, id_color, matricula, kms, fecha_compra)
	VALUES('C008', 'V004', 'S008', 'R008', 'P006', '9873MAB', '49000', '2020-10-02');