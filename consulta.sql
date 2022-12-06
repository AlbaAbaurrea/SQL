
select b.modelo, b.marca, b.grupo_empresarial, 
a.kms, a.matricula, a.fecha_compra,
c.color,
d.num_poliza, d.compania
from practicasql_.coches as a
join practicasql_.tiposvehiculos as b on a.id_vehiculo = b.id_vehiculo
join practicasql_.colores AS c ON a.id_color = c.id_color
join practicasql_.seguro as d on a.id_seguro = d.id_seguro
