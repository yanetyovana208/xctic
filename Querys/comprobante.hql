CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.comprobante(
 IdComprobante string,
 TipoComprobante string
 )
 COMMENT 'Tabla comprobante'
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY '|'
 COLLECTION ITEMS TERMINATED BY ','
 LOCATION '/proyecto/comprobante'
 tblproperties("skip.header.line.count" = "1");