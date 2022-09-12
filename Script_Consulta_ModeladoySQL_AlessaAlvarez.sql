/*
 * 
 * Consulta SQL
 * 
 */

select c.dt_compra , d."name",b."name", a.matricula, e."name", a.num_kilometros,a.num_poliza
from alessamaster.vehiculos_kc a 
inner join alessamaster.marcas b on a.marca = b.marca
inner join alessamaster.hist_revisiones c on a.idvehiculo = c.id_vehiculo 
inner join alessamaster.grupos_empresariales d on b.grupo_empresarial = d.grupo_empresarial 
inner join alessamaster.colors e on a.color = e.color 

