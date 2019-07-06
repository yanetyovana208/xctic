insert into proyecto.transaccion_particion_estatica partition(mensual ='201804')
select 
from_unixtime (unix_timestamp(Concat(substring(fecha,1,4),SUBSTRING(Fecha,5,2), SUBSTRING(Fecha,7,2)), 'yyyyMMdd'), 'yyyy-MM-dd') as Fecha,
(CASE WHEN cast(venta_mn as decimal(19, 2)) < '100' THEN 'BAJA' WHEN cast(venta_mn as decimal(19, 2)) BETWEEN '100' AND '2000' THEN 'MEDIA' ELSE 'ALTA' END) AS tipocliente,
Case when tipocomprobante = 'BOLETA DE VENTA' then 'Boleta' when tipocomprobante = 'NOTA DE CREDITO' then 'Nota_credito' else 'Factura' end as Tipo_Transaccion,
cast(Venta_mn as decimal(19, 2)) as Monto from proyecto.transaccion;
