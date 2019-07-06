CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.cliente(
id_cliente string COMMENT 'id_cliente',
cliente string COMMENT 'cliente',
ubigeo string COMMENT 'ubigeo',
direccion string COMMENT 'direccion',
correo string COMMENT 'correo',
telefono string COMMENT 'telefono'
)
COMMENT 'Tabla cliente'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/proyecto/cliente'
tblproperties("skip.header.line.count" = "1");