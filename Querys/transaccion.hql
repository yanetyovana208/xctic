#Tabla transaccion
CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.transaccion(
 id_ptoatencion string COMMENT 'id_ptoatencion',
 id_articulo string COMMENT 'Id_articulo',
 rubro string COMMENT 'rubro',
 familia string COMMENT 'Familia',
 marca string COMMENT 'marca',
 articulo string COMMENT 'articulo',
 id_cliente string COMMENT 'id_cliente',
 cliente string COMMENT 'cliente',
 fecha string COMMENT 'fecha_transaccion',
 id_tienda string COMMENT 'id_tienda',
 idcomprobante string COMMENT 'IdComprobante',
 tipocomprobante string COMMENT 'tipocomprobante',
 cantidad string COMMENT 'cantidad',
 venta_mn string COMMENT 'venta_mn',
 costo_mn string COMMENT 'costo_mn'

)
 COMMENT 'Tabla transaccion'
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY ','
 COLLECTION ITEMS TERMINATED BY ','
 MAP KEYS TERMINATED BY ':'
 STORED AS TEXTFILE
 LOCATION '/proyecto/transaccion'
 tblproperties("skip.header.line.count" = "1");