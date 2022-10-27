-------------------
-------------------

---INGRESO DE DATOS
--SEXO
insert into sexo (descripcion)values ('F');
insert into sexo (descripcion )values ('M');
---select * from sexo;

---TIPO DE SANGRE
insert into tipo_sangre values ('A','+');
insert into tipo_sangre values ('A','-');
insert into tipo_sangre values ('B','+');
insert into tipo_sangre values ('B','-');
insert into tipo_sangre values ('AB','+');
insert into tipo_sangre values ('AB','-');
insert into tipo_sangre values ('O','+');
insert into tipo_sangre values ('O','-');

--select * from tipo_sangre;

---TIPO DE HEMOCOMPONENTE
insert into tipo_hemocomponente values ('globulos rojos');
insert into tipo_hemocomponente values ('plaquetas');
insert into tipo_hemocomponente values ('plasma');
--select * from tipo_hemocomponente;
-- Seteamos el formato de la fecha a día-mes-año 
--(SET DATEFORMAT overrides the implicit date format setting of SET LANGUAGE)
set dateformat dmy;


----ingreso de datos
---DONANTE
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (1,'38674622','Martin','Perez',2,'19-11-1994','1113344','Lomas 245',7);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (2,'34058298','Laura','Lopez',1,'14-12-1998','11222333','Gutemberg 3245',1);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (3,'45928582','Oracio','Martinez',2,'3-1-1995','3344455','Hirigoyen 2245',2);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (4,'23405923','Lourdes','Cepeda',1,'23-5-2000','3333599','San juan 648',2);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (5,'45929502','Rocio','Gimenez',1,'24-6-2001','11356677','Escobar 355',4);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (6,'24950359','Mariel','Sanchez',1,'30-1-2000','9999994','La valle 1995',8);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (7,'25960249','Lautaro','Cardozo',2,'12-8-1987','7778822','La rioja 999',8);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (8,'34599887','Emanuel','Rodriguez',2,'14-2-1990','2444477','Las heras 288',3);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (9,'35992857','Tiago','Lopez',2,'22-4-1984','33333333','Salta 3443',4);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (10,'44588832','Sara','Hirigoyen',1,'21-10-2002','2222222','Jujuy 488',5);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (11,'33555552','Santiago','Gomez',2,'9-9-1998','55585858','Independencia 944',5);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (12,'35556667','Rocio','Carmelo',1,'8-2-1999','232442424','Maipu 113',6);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (13,'23466663','Catalina','Mancedo',1,'5-11-1987','132343','Hidalgo 777',6);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (14,'34666666','Juaquin','Cardozo',2,'29-7-1989','1343436','Colmen 744',3);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (15,'32222233','Lorena','Colorado',1,'8-4-1978','34553434','San juan 8889',1);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (16,'25668888','Marcelo','Marquez',2,'6-12-1988','16767632','La pampa 6565',1);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (17,'11224564','Lucas','Gomez',2,'29-11-2000','11445454','Buenos Aires 996',2);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (18,'43400000','Lucrecia','Martinez',1,'8-12-1988','16767632','Cordoba 3365',7);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (19,'14632323','Jose','Colorado',2,'1-1-2002','1664322054','Catamarca 456',7);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (20,'25454545','Mariela','Fernandez',1,'4-12-1970','80067632','Las heras 885',4);
insert into donante (id_donante,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values (21,'12323232','Emanuel','Noruega',2,'24-4-1986','80705454','Colon 356',3);

--select * from donante;
--delete from donante;

---PACIENTE
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('34667546','Horacio','Martinez',2,'5-3-1982','3333333','Catamarca 322',7);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('36666666','Claudio','Martinez',2,'14-2-1975','3344446','La valle 2268',1);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('43333333','Maria','Martinez',1,'22-5-1998','33577733','Buenos aires 1222',1);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('40003330','Carmen','Martinez',1,'23-2-1992','2234535','Neuquen 445',4);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('35667777','Mariana','Martinez',1,'6-10-1995','1111333','Arequipa 372',3);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('45555555','Valentino','Martinez',2,'16-12-2001','1103333','Ciudadela 447',2);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('33333333','Matias','Martinez',2,'15-7-2000','22247333','Colombia 673',2);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('32222222','Carmen','Martinez',1,'12-7-2000','7755766','Bahia 234',6);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('23444444','Sofia','Martinez',1,'4-6-1995','34221111','Salta 377',5);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('24555555','Fabricio','Martinez',2,'25-8-1994','3221111','San juan 366',6);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('53333334','Maximiliano','Martinez',2,'26-4-1979','454666','Independencia 878',3);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('42222222','Rocio','Martinez',1,'5-3-1988','22567777','Misiones 444',8);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('33347790','Fabiana','Gomez',2,'20-4-1977','454666','Cordoba 440',8);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('42000000','Facundo','Lopez',1,'23-3-1999','22567777','Gutemberg 222',7);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('42111111','Leo','Lopez',1,'22-3-1989','2256327','Cañuelas 2323',7);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('42003333','Marcelo','Suarez',1,'21-5-1992','23567777','Palermo 5555',7);

insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('22222222','Lupe','Gomez',2,'22-3-2000','2674027','Misiones 2313',7);
insert into paciente (dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion,tipo_sangre_id) values ('20000000','Claudia','Manolo',2,'21-5-2001','2324777','Palermo 5555',2);

--select * from paciente;
--delete from paciente;

---BIOANALISTA
insert into bioanalista (id_bioanalista,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion) values (1,'29587432','Maria','Gonzales',1,'29/12/1983','24543534','La paz 234');
insert into bioanalista (id_bioanalista,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion) values (2,'36456662','Gabriela','Fernandez',1,'9/1/1995','2000008','San juan 325');
insert into bioanalista (id_bioanalista,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion) values (3,'39999432','Facundo','Martinez',2,'2/2/1993','20088777','La valle 1999');
insert into bioanalista (id_bioanalista,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion) values (4,'33000032','Dario','Del Toro',2,'9/7/1980','122222222','Colombia 1933');
insert into bioanalista (id_bioanalista,dni,nombre,apellido,id_sexo,fecha_nacimiento,telefono,direccion) values (5,'27777775','Valeria','Salvado',1,'14/6/1989','1447777','Formosa 2003');

--delete from bioanalista;
--select * from bioanalista;

----BOLSA
--31/12/2008 09:01 dd-mm-aaaa hh:mm
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (1,'15/7/2021 20:30','75.20','22/7/2021 15:45',1,2);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (2,'5/7/2022 10:30','55.60','10/7/2022 10:30',2,2);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (3,'3/7/2022 9:00','73.20','7/8/2022 9:00',3,1);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (4,'6/3/2022 20:20','64.00','12/3/2022 20:20',4,2);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (5,'15/8/2021 12:40','65.33','15/8/2025 12:40',5,3);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (6,'22/5/2022 16:20','75.34','22/5/2025 16:20',6,3);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (7,'23/6/2022 22:34','75.20','23/6/2025 22:34',7,3);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (8,'30/10/2022 23:32','57.40','30/11/2022 23:32',8,1);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (9,'20/9/2022 12:02','73.26','20/10/2022 12:02',9,1);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (10,'5/2/2022 12:04','65.34','10/3/2022 12:04',10,1);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (11,'2/10/2021 14:01','57.45','10/10/2021 14:01',11,2);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (12,'14/9/2021 18:11','67.43','23/9/2021 18:11',12,2);
insert into bolsa (id_bolsa,fecha_extraccion,cantidad,fecha_vencimiento,id_donante,id_hemocomponente) values (13,'11/7/2022 13:35','59.23','11/7/2025 13:35',13,3);

--select * from bolsa;
--delete from bolsa;

-----PRUEBAS_DONANTE
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (1,'16/7/2021 21:30','false','false','false','false','false','false','false','false',1,1);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (2,'6/7/2022 10:30','true','false','false','false','false','false','false','false',2,1);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (3,'4/7/2022 9:00','false','false','false','false','false','false','false','false',3,2);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (4,'7/3/2022 20:20','false','false','false','false','false','true','false','false',4,2);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (5,'16/8/2021 12:40','false','false','false','false','false','false','false','false',5,2);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (6,'23/5/2022 16:20','false','false','false','false','false','false','false','false',6,4);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (7,'24/6/2022 22:34','false','false','false','false','false','false','false','false',7,4);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (8,'1/11/2022 23:32','false','false','false','true','false','false','false','false',8,3);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (9,'21/9/2022 12:02','false','false','false','false','false','false','false','false',9,3);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (10,'6/2/2022 12:04','false','false','false','false','false','false','false','false',10,4);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (11,'3/10/2021 14:01','false','false','false','false','false','false','false','false',11,3);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (12,'15/9/2021 18:11','false','false','false','false','false','false','false','true',12,1);
insert into pruebas_donante (id_prueba,fecha, hcv,hiv,sifilis,ahbc,htlv,chagas,hbsag,t_prueba,id_bolsa,id_bioanalista) values (13,'12/7/2022 13:35','false','false','false','false','false','false','false','false',13,2);


--delete from pruebas_donante;
--select * from pruebas_donante;

-----SOLICITUD DE TRANSFUSION
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (1,'25/6/2021 12:45','transfusion globulos rojos','65.20','34667546',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (2,'28/6/2022 12:32','transfusion plaquetas','55.20','36666666',2);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (3,'23/8/2022 11:45','transfusion plaquetas','56.10','43333333',2);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (4,'1/3/2022 22:42','transfusion plasma','65.00','40003330',3);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (5,'10/8/2021 13:11','transfusion globulos rojos','65.00','45555555',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (6,'15/5/2022 12:30','transfusion globulos rojos','54.20','35667777',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (7,'18/6/2022 15:55','transfusion globulos rojos','60.00','33333333',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (8,'27/10/2022 16:35','transfusion plaquetas','60.20','32222222',2);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (9,'15/9/2022 21:25','transfusion plasma','62.00','23444444',3);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (10,'30/1/2022 12:22','transfusion globulos rojos','50.20','24555555',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (11,'28/9/2022 12:32','transfusion globulos rojos','55.20','53333334',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (12,'10/9/2021 11:23','transfusion plaquetas','53.00','42222222',2);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (13,'5/7/2021 19:45','transfusion globulos rojos','65.00','33347790',1);
insert into solicitud_transfusion (id_solicitud_transfusion,fecha, motivo, cantidad, paciente_dni, id_hemocomponente) values (14,'9/4/2022 20:00','transfusion globulos rojos','55.00','42000000',1);

--delete from solicitud_transfusion;
--select * from solicitud_transfusion;

-----TRANSFUSION
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (1,'12/7/2021 11:30','11/8/2021 12:45',null,null,1,1);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (2,'10/7/2022 11:50','9/7/2022 12:00',null,'filtrado',2,3);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (3,'30/8/2022 10:00','29/8/2022 9:45',null,null,3,4);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (4,'16/4/2022 15:30','15/4/2022 14:20',null,null,4,5);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (5,'20/8/2021 11:30','19/8/2021 12:45',null,'irradiado',5,6);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (6,'20/5/2022 10:30','19/5/2022 19:45','fiebre',null,6,7);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (7,'19/6/2022 11:20','17/6/2022 12:55','picazon',null,7,9);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (8,'3/11/2022 11:30','1/11/2022 12:45',null,null,8,10);
insert into transfusion(id_transfusion,fecha_transfusion,fecha_recepcion,muestra_reaccion,modificacion,id_solicitud_transfusion,id_bolsa) values (9,'27/9/2022 21:30','26/9/2022 16:25',null,null,9,11);

--delete from transfusion;
--select * from transfusion;
--CONSTRAINT CK__alumno_fecha_nac CHECK (FORMAT(fecha_nac,'yyyyMMdd') <= FORMAT(GETDATE(),'yyyyMMdd'))--la fecha de nacimiento tiene que ser anterior a la fecha actual

