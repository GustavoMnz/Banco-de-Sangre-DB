create database Banco_de_Sangre;
go
use Banco_de_Sangre;
go

create table tipo_sangre
(
	tipo_sangre_id int identity primary key,
	grupo_sanguineo char(2) not null,
	factor_rh char(1) not null,
	constraint CK_tipo_sangre_grupo_sanguineo check (grupo_sanguineo in ('A','B','AB','O')),
	constraint CK_tipo_sangre_factor_rh check (factor_rh in ('+','-')),
);
go
create table sexo
(
	id_sexo int identity primary key,
	descripcion char(1) not null,
	constraint CK__sexo__descripcion check (descripcion in ('F','M')),
);
go
create table tipo_hemocomponente
(
	id_hemocomponente int identity primary key,
	descripcion varchar(15),
);
go
create table donante 
(
	id_donante int primary key,
	dni char(8) unique not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	id_sexo int not null,
	fecha_nacimiento date not null,
	telefono varchar(20),
	direccion varchar(40),
	tipo_sangre_id int not null,
	constraint UQ__donante_dni unique (dni),
	constraint FK__donante__sexo foreign key (id_sexo) references sexo (id_sexo),
	constraint FK__donante__tipo_sangre foreign key (tipo_sangre_id) references tipo_sangre (tipo_sangre_id)
);
go
create table paciente 
(
	dni char(8) unique not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	id_sexo int not null,
	fecha_nacimiento date not null,
	telefono varchar(20),
	direccion varchar(40),
	tipo_sangre_id int not null,
	constraint UQ__paciente_dni unique (dni),
	constraint FK__paciente__sexo foreign key (id_sexo) references sexo (id_sexo),
	constraint FK__paciente__tipo_sangre foreign key (tipo_sangre_id) references tipo_sangre (tipo_sangre_id)
);
go
create table bioanalista 
(
	id_bioanalista int primary key,
	dni char(8) unique not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	id_sexo int not null,
	fecha_nacimiento date not null,
	telefono varchar(20),
	direccion varchar(40),
	constraint UQ__bioanalista_dni unique (dni),
	constraint FK__bioanalista__sexo foreign key (id_sexo) references sexo (id_sexo),
);
go
