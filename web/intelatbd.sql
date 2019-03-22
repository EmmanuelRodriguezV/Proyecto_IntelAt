create database 0bcc02f2;
-- 
create table Empresa
(
	id_empresa varchar(10) primary key,
	nombre_empresa varchar (25),
	fecha_alta_empresa date,
);

create table Servicio
(
	id_servicio varchar(10) primary key,
	num_siniestro int,
	fecha_inicio date,
	fecha_final date
);


