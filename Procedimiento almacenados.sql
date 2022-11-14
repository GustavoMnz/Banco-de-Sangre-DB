USE Banco_de_Sangre
GO

-------------------------PROCEDIMIENTOS ALMACENADOS PARA INSERTAR REGISTROS-------------------------
--para ingresar transfucion
 create procedure pa_ingresar_transfucion(
	@id_transfusion int,
	@feha_transfusion smalldatetime,
	@feha_recepcion smalldatetime,
	@muestra_reaccion varchar (40),
	@modificacion varchar (20),
	@id_solicitud_transfusion int,
	@id_bolsa int)
	as
	insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa)
                     values (@id_transfusion,@feha_transfusion,@feha_recepcion,@muestra_reaccion,@modificacion,@id_solicitud_transfusion,@id_bolsa )
go

-- para ingresar tipo_hemocomponente
create procedure pa_ingresar_tipo_hemocomponente(
	@descripcion varchar (25))
      as
	insert into tipo_hemocomponente( descripcion)
				values (@descripcion )
go
				
--select * from tipo_hemocomponente;
--execute pa_ingresar_tipo_hemocomponente 'globulos blancos'

-- para ingresar solicitud transfusion
create procedure pa_ingresar_Solicitud_transfusion(
	@id_solicitud_transfusion int,
	@fecha smalldatetime,
	@motivo varchar(40),
	@cantidad numeric(5,2),
	@paciente_dni char(8),
	@id_hemocomponente int)
	as
	insert into solicitud_transfusion(id_solicitud_transfusion,fecha,motivo,cantidad,paciente_dni,id_hemocomponente,id_estado)
				values ( @id_solicitud_transfusion,@fecha,@motivo,@cantidad,@paciente_dni,@id_hemocomponente,default)
go

set dateformat dmy
go
--exec pa_ingresar_Solicitud_transfusion 15,'25/6/2021 12:45','transfusion globulos rojos','65.20','34667546',1;

-- para ingresar pruebas_donate
create procedure pa_ingresar_Pruebas_Donantes(
	@id_prueba int,
	@fecha smalldatetime,
	@hcv bit,
	@hiv bit,
	@sifilis bit,
	@ahbc bit,
	@htlv bit,
	@chagas bit,
	@hbsag bit,
	@t_prueba bit,
	@id_bolsa int,
	@id_bioanalista int)
	as
	insert into pruebas_donante(id_prueba,fecha,hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba, id_bolsa,id_bioanalista)
                    	values(@id_prueba,@fecha,@hcv,@hiv,@sifilis,@ahbc,@htlv,@chagas,@hbsag,@t_prueba,@id_bolsa,@id_bioanalista)
go

-- para ingresar paciente
create procedure pa_ingresar_Paciente(
	@dni char(8),
	@nombre varchar(20),
	@apellido varchar(20),
	@id_sexo int,
	@fecha_nacimiento date,
	@telefono varchar(20),
	@direccion varchar(40),
	@tipo_sangre int)
	as
	insert into paciente(dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id)
		values (@dni,@nombre,@apellido,@id_sexo,@fecha_nacimiento,@telefono,@direccion,@tipo_sangre)
go
--para ingresar estado
    create procedure pa_ingresar_estado(
        @descripcion varchar(25))
        as
        insert into estado(descripcion)
        values (@descripcion)
go

-- para ingresar bolsa
create procedure pa_ingresar_bolsa2(
	@id_bolsa int,
	@fecha_extracion smalldatetime,
	@cantidad numeric(5,2),
	@fecha_vencimiento smalldatetime,
	@id_donante int,
	@id_hemocomponente int,
	@id_estado int)
	as
	insert into bolsa(id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente,id_estado)
	values (@id_bolsa,@fecha_extracion,@cantidad,@fecha_vencimiento,@id_donante,@id_hemocomponente,@id_estado)
go
 -- para ingresar donante
create procedure pa_ingresar_donante(
	@id_donante int,
	@dni char(8),
	@nombre varchar(20),
	@apellido varchar(20),
	@id_sexo int,
	@fecha_nacimiento date,
	@telefono varchar(20),
	@direccion varchar(40),
	@tipo_sangre_id int)
	as
	insert into donante(id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id)
	values (@id_donante,@dni,@nombre,@apellido,@id_sexo,@fecha_nacimiento,@telefono,@direccion,@tipo_sangre_id)
go
-- para ingresar bioanalista
create procedure pa_ingresar_bioanalista(
	@id_bioanalista int,
	@dni char(8),
	@nombre varchar(20),
	@apellido varchar(20),
	@id_sexo int,
	@fecha_nacimiento date,
	@telefono varchar(20),
	@direccion varchar(40))
	as
	insert into bioanalista(id_bioanalista,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion)
		values (@id_bioanalista,@dni,@nombre,@apellido,@id_sexo,@fecha_nacimiento,@telefono,@direccion)
go

-------------------------PROCEDIMIENTOS ALMACENADOS PARA ELIMINAR REGISTROS-------------------------
-- Para eliminar bolsa
create procedure pa_eliminar_bolsa
	(@id_bolsa int)
    as
	alter table pruebas_donante
		drop constraint FK__pruebas_donante__bolsa

	alter table transfusion
		drop constraint FK__transfusion__bolsa
		
	delete from bolsa where id_bolsa= @id_bolsa

	alter table pruebas_donante with nocheck 
		add	constraint FK__pruebas_donante__bolsa foreign key (id_bolsa) references bolsa (id_bolsa)
	alter table transfusion with nocheck
	 add constraint FK__transfusion__bolsa foreign key (id_bolsa) references bolsa (id_bolsa)
go


-- Para eliminar donante
create procedure pa_eliminar_donante
	(@dni char(8))
    as		
	alter table bolsa
	drop constraint FK__bolsa__donante
	delete from donante where dni= @dni
	alter table bolsa with check 
	add constraint FK__bolsa__donante foreign key (id_donante) references donante (id_donante)
go

-- Para eliminar estado
create procedure pa_eliminar_estado
	(@id_estado int)
      as		
	alter table bolsa
		drop constraint FK__bolsa_estado
	alter table solicitud_transfusion
		drop constraint FK__solicitud_transfusion_estado

	delete from estado where id_estado= @id_estado

	alter table bolsa with nocheck 
		add constraint FK__bolsa_estado foreign key (id_estado) references estado (id_estado)
	alter table solicitud_transfusion with nocheck
		add constraint FK__solicitud_transfusion_estado foreign key (id_estado) references estado (id_estado)
go

-- Para eliminar Paciente  este error me da "Ya hay un objeto con el nombre 'FK__solicitud_transfusion__paciente' en la base de datos."
create procedure pa_eliminar_paciente
	(@id_dni char(8))
	as		
	alter table solicitud_transfusion
		drop constraint FK__solicitud_transfusion__paciente 
	delete from paciente where dni= @id_dni
	alter table solicitud_transfusion with nocheck
		add constraint FK__solicitud_transfusion__paciente foreign key (paciente_dni) references paciente (dni)
go

	-- Para eliminar Pruebas Donantes
create procedure pa_eliminar_pruebas_donante
	(@id_prueba int)
	as
	delete from pruebas_donante where id_prueba= @id_prueba
go  

--select * from pruebas_donante;
--execute pa_eliminar_pruebas_donante 2;

-- Para eliminar Solicitud de Transfucion
create procedure pa_eliminar_solicitud_Transfusion
	(@id_solicitud_transfusion int)
	as		
	alter table transfusion
		drop constraint FK__transfusion__solicitud_transfusion     
	delete from solicitud_transfusion where id_solicitud_transfusion= @id_solicitud_transfusion
	alter table transfusion with nocheck
		add constraint FK__transfusion__solicitud_transfusion foreign key (id_solicitud_transfusion) references solicitud_transfusion (id_solicitud_transfusion)
go

--select * from solicitud_transfusion;
--execute pa_eliminar_solicitud_Transfusion 1

-- Para eliminar tipo Hemocomponente
create procedure pa_eliminar_tipo_hemocomponente
	(@id_hemocomponente int)
	as		
	delete from tipo_hemocomponente where id_hemocomponente= @id_hemocomponente
go 

--execute pa_eliminar_tipo_hemocomponente 4
--select * from tipo_hemocomponente;

-- Para eliminar transfusion
create procedure pa_eliminar_transfusion
	(@id_transfusion int)
	as		
	delete from transfusion where id_transfusion= @id_transfusion
go 

--select * from transfusion;
--execute pa_eliminar_transfusion 1
	
