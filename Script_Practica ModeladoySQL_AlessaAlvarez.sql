/*
 * 
 * Trabajo final SQL 1 - Bootcamp en Big Data, Inteligencia Artificial y Machine Learning - KeepCoding
 * 
 * 
 */

-- Esquema propio
create schema alessamaster authorization gqqyoxzh;

/*
 * 
 * Marcas
 * 
 */
--Grupo empresarial

create table alessamaster.grupos_empresariales(
	grupo_empresarial varchar(20) not null, --PK
	name varchar(50) not null,
	description varchar(512) null
);

---PK

alter table alessamaster.grupos_empresariales 
add constraint grupos_empresariales_PK primary key(grupo_empresarial);

--Marcas

create table alessamaster.marcas(
	marca varchar(20) not null, --PK
	name varchar(50) not null,
	grupo_empresarial varchar(50) not null, --FK grupos_empresariales()
	description varchar(512) null
);

---PK
alter table alessamaster.marcas
add constraint marca_PK primary key(marca);

---FK
alter table alessamaster.marcas
add constraint grupo_empresarial_FK
						foreign key(grupo_empresarial)
						references alessamaster.grupos_empresariales(grupo_empresarial);

					
					
/*
 *
 *Precio compra
 *
 */
					
--Currency
					
create table alessamaster.currency(
	idcurrency varchar(20) not null, --PK
	name varchar(200) not null
);

--PK
alter table alessamaster.currency
add constraint idcurrency_PK primary key(idcurrency);


--Precio compra

create table alessamaster.precio_compra(
	precio_compra numeric(20,5) not null, --PK
	idvehiculo varchar(20) not null, --FK
	description varchar(512) null,
	idcurrency varchar(20) not null --FK
);

--PK

alter table alessamaster.precio_compra 
add constraint precio_compra_PK primary key(precio_compra);

--FK
alter table alessamaster.precio_compra
add constraint idcurrency_FK
						foreign key(idcurrency)
						references alessamaster.currency(idcurrency);

/*
 * 
 * Historial de revisiones
 * 
 */
					
--Tipos de revisiones

create table alessamaster.types_revisiones(
	type_revision varchar(20) not null, --PK
	name varchar(200) not null,
	valor_revision numeric(20,5) not null,
	description varchar(512) null,
	idcurrency varchar(20) not null --FK
);				

--PK
alter table alessamaster.types_revisiones
add constraint type_revision_PK primary key(type_revision);

--FK
alter table alessamaster.types_revisiones
add constraint idcurrency_FK
						foreign key(idcurrency)
						references alessamaster.currency(idcurrency);
					
--Histórico de revisiones

create table alessamaster.hist_revisiones(
	id_vehiculo varchar(20) not null, --PK
	dt_compra date not null,
	dt_start date not null, 
	dt_end date null default '4000-01-01',
	type_revision varchar(20) not null --FK
);		

--PK's
alter table alessamaster.hist_revisiones
add constraint id_vehiculo_PK primary key(id_vehiculo);


alter table alessamaster.hist_revisiones
add constraint type_revision_FK
						foreign key(type_revision)
						references alessamaster.types_revisiones(type_revision);

					
/*
 * 
 * Colores * 
 * 
 */			

create table alessamaster.colors(
	color varchar(20) not null, --PK
	name varchar (200) not null,
	description varchar(512) null
);

--PK
alter table alessamaster.colors
add constraint color_PK primary key(color);


/*
 * 
 * Aseguradoras * 
 * 
 */			

create table alessamaster.aseguradoras(
	aseguradora varchar(20) not null, --PK
	name varchar (200) not null,
	description varchar(512) null
);

--PK
alter table alessamaster.aseguradoras
add constraint aseguradora_PK primary key(aseguradora);


/*
 * 
 * Vehiculos KeepCoding
 *  
 * */


create table alessamaster.vehiculos_kc(
	idvehiculo varchar(20) not null, --PK,FK
	dt_compra date not null,
	color varchar(20) not null, --FK
	aseguradora varchar(20) not null,	--FK
	marca varchar(20) not null, --FK
	precio_compra numeric(20,5) not null, --FK
	matricula varchar(50) not null,
	num_kilometros integer not null,
	num_poliza varchar(50) not null
);

--PK
alter table alessamaster.vehiculos_kc
add constraint idvehiculo_PK primary key(idvehiculo);


--FK's
alter table alessamaster.vehiculos_kc
add constraint idvehiculo_FK
						foreign key(idvehiculo)
						references alessamaster.hist_revisiones(id_vehiculo);
						
						
alter table alessamaster.vehiculos_kc
add constraint color_FK
						foreign key(color)
						references alessamaster.colors(color);		
						
alter table alessamaster.vehiculos_kc
add constraint aseguradora_FK
						foreign key(aseguradora)
						references alessamaster.aseguradoras(aseguradora);		
						
alter table alessamaster.vehiculos_kc
add constraint marca_FK
						foreign key(marca)
						references alessamaster.marcas(marca);			
					
alter table alessamaster.vehiculos_kc
add constraint precio_compra_FK
						foreign key(precio_compra)
						references alessamaster.precio_compra(precio_compra);	
