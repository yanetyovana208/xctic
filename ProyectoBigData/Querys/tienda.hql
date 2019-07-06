CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.tienda(
 id_tienda string,
 tienda string,
 figura string,
 id_ubicacion string,
 direccion string,
 distrito string,
 distritotienda struct<distrito:STRING,tienda:string>
 )
 COMMENT 'Tabla tienda'
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY '|'
 COLLECTION ITEMS TERMINATED BY ','
 MAP KEYS TERMINATED BY ':'
 LOCATION '/proyecto/tienda'
 tblproperties("skip.header.line.count" = "1");