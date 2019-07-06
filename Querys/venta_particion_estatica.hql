CREATE TABLE proyecto.transaccion_particion_estatica
(
Fecha String,
Tipo_cliente String,
Tipo_Transaccion String,
Monto String
)
PARTITIONED BY (Mensual string)
STORED AS PARQUET
LOCATION '/proyecto/transaccion_particion_estatica';
