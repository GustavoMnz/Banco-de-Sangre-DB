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
	dni char(8) not null,
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
	dni char(8) not null,
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
	dni char(8) not null,
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
create table bolsa 
(
    id_bolsa int primary key,
    fecha_extraccion smalldatetime not null,
    cantidad numeric(5,2) not null,
    fecha_vencimiento smalldatetime not null,
    id_donante int not null,
    id_hemocomponente int not null,
    constraint FK__bolsa__donante foreign key (id_donante) references donante (id_donante),
    constraint FK__bolsa__tipo_hemocomponente foreign key (id_hemocomponente) references tipo_hemocomponente (id_hemocomponente)
);
go
create table pruebas_donante (
   id_prueba int primary key,
   fecha smalldatetime not null,
   hcv bit not null,
   hiv bit not null,
   sifilis bit not null,
   ahbc bit not null,
   htlv bit not null,
   chagas bit not null,
   hbsag bit not null,
   t_prueba bit not null,
   id_bolsa int not null,
   id_bioanalista int not null,
   constraint UQ__pruebas_donante_bolsa unique (id_bolsa),
   constraint FK__pruebas_donante__bolsa foreign key (id_bolsa) references bolsa (id_bolsa),
   constraint FK__pruebas_donante__bioanalista foreign key (id_bioanalista) references bioanalista (id_bioanalista)
    );
go
create table solicitud_transfusion
(
	id_solicitud_transfusion int primary key,
	fecha smalldatetime not null,
	motivo varchar (40),
	cantidad numeric (5,2),
	paciente_dni char(8) not null,
	id_hemocomponente int not null,
	constraint FK__solicitud_transfusion__paciente foreign key (paciente_dni) references paciente (dni),
	constraint FK__solicitud_transfusion__tipo_hemocomponente foreign key (id_hemocomponente) references tipo_hemocomponente (id_hemocomponente)
);
go
create table transfusion
(
	id_transfusion int primary key,
	fecha_transfusion smalldatetime not null,
	muestra_reaccion varchar(40),
	modificacion varchar(20),
	id_solicitud_transfusion int not null,
	id_bolsa int not null,
	constraint FK__transfusion__solicitud_transfusion foreign key (id_solicitud_transfusion) references solicitud_transfusion (id_solicitud_transfusion),
	constraint FK__transfusion__bolsa foreign key (id_bolsa) references bolsa (id_bolsa)
);
go

------------------------------------RESTRICCIONES------------------------------------

alter table paciente
	add constraint CK__paciente_fecha_nacimiento CHECK (fecha_nacimiento <= CURRENT_TIMESTAMP);

alter table bioanalista
	add constraint CK__bioanalista_fecha_nacimiento CHECK (fecha_nacimiento <= CURRENT_TIMESTAMP);

alter table bolsa
	add constraint DF__bolsa__fecha_extraccion DEFAULT CURRENT_TIMESTAMP FOR fecha_extraccion;

alter table bolsa
	add constraint CK__bolsa_cantidad CHECK (cantidad >= 50 AND cantidad<= 300);

alter table bolsa
	add constraint DF__bolsa__fecha_vencimiento DEFAULT NULL FOR fecha_vencimiento;

alter table solicitud_transfusion
	add constraint DF__solicitud_transfusion_fecha DEFAULT CURRENT_TIMESTAMP FOR fecha;
