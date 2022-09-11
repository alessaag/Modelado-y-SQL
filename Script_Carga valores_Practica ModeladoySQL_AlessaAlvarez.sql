/*
 * 
 * Se insertan valores a las tablas
 * 
 * */

insert into alessamaster.aseguradoras(aseguradora,"name") values('01','MAPFRE');
insert into alessamaster.aseguradoras(aseguradora,"name") values('02','ALLIANZ');
insert into alessamaster.aseguradoras(aseguradora,"name") values('03','METLIFE');
insert into alessamaster.aseguradoras(aseguradora,"name") values('04','HDI');
insert into alessamaster.aseguradoras(aseguradora,"name") values('05','BBVA');

insert into alessamaster.colors(color,"name") values('01','blanco');
insert into alessamaster.colors(color,"name") values('02','gris');
insert into alessamaster.colors(color,"name") values('03','negro');
insert into alessamaster.colors(color,"name") values('04','naranja');
insert into alessamaster.colors(color,"name") values('05','cobalto');


insert into alessamaster.currency(idcurrency,"name") values('01','EUR');
insert into alessamaster.currency(idcurrency,"name") values('02','USD');
insert into alessamaster.currency(idcurrency,"name") values('03','COP');
insert into alessamaster.currency(idcurrency,"name") values('04','MXN');
insert into alessamaster.currency(idcurrency,"name") values('05','BRL');

insert into alessamaster.grupos_empresariales(grupo_empresarial,"name") values('01','BMW Group');
insert into alessamaster.grupos_empresariales(grupo_empresarial,"name") values('02','Volkswagen');
insert into alessamaster.grupos_empresariales(grupo_empresarial,"name") values('03','General Motors');

insert into alessamaster.types_revisiones(type_revision,"name",valor_revision,idcurrency) values('01','Preventiva','200','01');
insert into alessamaster.types_revisiones(type_revision,"name",valor_revision,idcurrency) values('02','Correctiva','1000','01');

insert into alessamaster.hist_revisiones(id_vehiculo,dt_compra,dt_start,dt_end,type_revision) values('01','2022-08-30','2022-09-07','4000-01-01','01');
insert into alessamaster.hist_revisiones(id_vehiculo,dt_compra,dt_start,dt_end,type_revision) values('02','2021-08-01','2022-09-07','4000-01-01','01');
insert into alessamaster.hist_revisiones(id_vehiculo,dt_compra,dt_start,dt_end,type_revision) values('03','2022-08-08','2022-09-07','4000-01-01','01');
insert into alessamaster.hist_revisiones(id_vehiculo,dt_compra,dt_start,dt_end,type_revision) values('04','2022-03-15','2022-09-07','4000-01-01','01');
insert into alessamaster.hist_revisiones(id_vehiculo,dt_compra,dt_start,dt_end,type_revision) values('05','2022-01-30','2022-09-07','4000-01-01','01');
insert into alessamaster.hist_revisiones(id_vehiculo,dt_compra,dt_start,dt_end,type_revision) values('06','2021-12-23','2022-09-07','4000-01-01','01');


insert into alessamaster.marcas(marca,"name",grupo_empresarial) values('01','Mini','01');
insert into alessamaster.marcas(marca,"name",grupo_empresarial) values('02','BMW','01');
insert into alessamaster.marcas(marca,"name",grupo_empresarial) values('03','Audi','02');
insert into alessamaster.marcas(marca,"name",grupo_empresarial) values('04','Volkswagen','02');
insert into alessamaster.marcas(marca,"name",grupo_empresarial) values('05','Chevrolet','03');
insert into alessamaster.marcas(marca,"name",grupo_empresarial) values('06','GMC','03');

insert into alessamaster.precio_compra(precio_compra,idvehiculo,idcurrency) values('01','50000','01');
insert into alessamaster.precio_compra(precio_compra,idvehiculo,idcurrency) values('02','35000','01');
insert into alessamaster.precio_compra(precio_compra,idvehiculo,idcurrency) values('03','40000','01');


insert into alessamaster.vehiculos_kc(idvehiculo,dt_compra,color,aseguradora,marca,precio_compra,matricula,num_kilometros,num_poliza) values('01','2022-08-30','01','01','01','01','5775CNS','2000','P4333');
insert into alessamaster.vehiculos_kc(idvehiculo,dt_compra,color,aseguradora,marca,precio_compra,matricula,num_kilometros,num_poliza) values('02','2021-08-01','02','02','02','02','7137CHW','45000','P4334');
insert into alessamaster.vehiculos_kc(idvehiculo,dt_compra,color,aseguradora,marca,precio_compra,matricula,num_kilometros,num_poliza) values('03','2022-08-08','03','03','03','03','5774CNS','5000','P4335');
insert into alessamaster.vehiculos_kc(idvehiculo,dt_compra,color,aseguradora,marca,precio_compra,matricula,num_kilometros,num_poliza) values('04','2022-03-15','04','04','04','01','5773CNS','20000','P4336');
insert into alessamaster.vehiculos_kc(idvehiculo,dt_compra,color,aseguradora,marca,precio_compra,matricula,num_kilometros,num_poliza) values('05','2022-01-30','05','05','05','02','7136CHW','25000','P4337');
insert into alessamaster.vehiculos_kc(idvehiculo,dt_compra,color,aseguradora,marca,precio_compra,matricula,num_kilometros,num_poliza) values('06','2021-12-23','01','01','06','03','7135CHW','30000','P4338');







