set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
CREATE TABLE proyecto.transaccion_particion_dinamica
(
    cliente String,
    tipotransaccion String
)
PARTITIONED BY (tipocliente STRING)
STORED AS PARQUET
LOCATION '/proyecto/transaccion_particion_dinamica';
