--CREAMOS ROL EN LA BASE DE DATOS Banco_de_Sangre
USE Banco_de_Sangre
GO
CREATE ROLE Bioanalista AUTHORIZATION [dbo]--creamos un nuevo rol (bioanalista) para la base de datos, autorizado por el usuario 'dbo' 
GO
--ASIGNAMOS PERMISOS
GRANT SELECT ON [dbo].[donante_bioanalista] TO [Bioanalista] --damos acceso a la vista donante_bioanalista al nuevo rol creado
GRANT SELECT ON [dbo].[Pacientes] TO [Bioanalista]----damos acceso a la vista pacientes al nuevo rol creado
--GRANT EXECUTE ON [dbo].[pa_insert_pruebas_donante] TO [bioanalista]--damos acceso para ejecutar el procedimiento almacenado 'pa_insert_pruebas_donante'
GO

--CREAMOS LOGIN Y USUARIO, LUEGO LE ASIGNAMOS EL ROL CREADO ANTERIORMENTE
USE master
GO
CREATE LOGIN [maria] WITH PASSWORD=N'123', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF --creamos un inicio de sesion y le asignamos contraseña
GO
USE Banco_de_Sangre
GO
CREATE USER [maria] FOR LOGIN [maria]	--creamos un usuario en nuestra base de datos para el login creado anteriormente
ALTER ROLE [Bioanalista] ADD MEMBER [maria]--agregamos el nuevo usuario al rol bioanalista
GO

-- error: no tiene permiso de acceder a las tablas
--select * from bolsa
-- no da error porque tiene permiso de ejecutar las vistas
select * from donante_bioanalista
select * from pacientes