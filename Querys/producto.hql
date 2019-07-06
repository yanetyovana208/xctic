#Tabla producto
use proyecto;
CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.producto(
 id_articulo string COMMENT 'Id_articulo',
 rubro string COMMENT 'rubro',
 familia string COMMENT 'Familia',
 marca string COMMENT 'marca',
 articulo string COMMENT 'articulo',
 familiamarca map<string,string> COMMENT 'Familiamarca'
)
 COMMENT 'Tabla producto'
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY '|'
 COLLECTION ITEMS TERMINATED BY ','
 MAP KEYS TERMINATED BY ':'
 STORED AS TEXTFILE
 LOCATION '/proyecto/producto'
 tblproperties("skip.header.line.count" = "1");