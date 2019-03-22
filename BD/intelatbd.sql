create database 0bcc02f2;
-- 
use 0bcc02f2;
create table Empresa
(
	id_empresa varchar(10) primary key,
	nombre_empresa varchar (25),
	fecha_alta_empresa date
);

create table Servicio
(
	id_servicio varchar(10) primary key,
	num_siniestro int,
	fecha_inicio date,
	fecha_final date
);

create table Imagen(
     id_imagen int primary key,
     url varchar(50));
    
create table ServicioContacto(
     id_servicio varchar(10),
     nombre_servicio varchar(50),
     email_contacto varchar(50),
     telefono int,
     primary key(id_servicio));
    
create table EmpresaContacto(
     id_empresa varchar(10) primary key,
     nombre_contacto varchar(30),
     email_contancto varchar(50),
     telefono int);

create table Avance(
     id_avance int primary key,
     fecha date,
     hora time,
     descripcion text,
     dia int,
     estado text);
    
