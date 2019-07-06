CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.tienda_buckets (
 id_tienda string,
 tienda string,
 distrito string
 )
 CLUSTERED BY (tienda) INTO 2 BUCKETS 
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY '|'
 COLLECTION ITEMS TERMINATED BY ','
 MAP KEYS TERMINATED BY ':'
LOCATION '/proyecto/tienda_bucketing';
set map.reduce.tasks = 2;
set hive.enforce.bucketing = true;
INSERT OVERWRITE TABLE proyecto.tienda_buckets SELECT id_tienda, tienda,distrito FROM proyecto.tienda;