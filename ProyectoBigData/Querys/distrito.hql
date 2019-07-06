#Tabla distrito
CREATE EXTERNAL TABLE IF NOT EXISTS proyecto.distrito(
 Id_Ubicacion string COMMENT 'Id_Ubicacion',
 Ubigeo string COMMENT 'Ubigeo',
 Distrito string COMMENT 'Distrito',
 Provincia string COMMENT 'Provincia',
 Departamento string COMMENT 'Departamento',
 Zona string COMMENT 'Zona',
 departamentozona map<string,string> COMMENT 'departamentozona'
)
 COMMENT 'Tabla distrito'
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY '|'
 COLLECTION ITEMS TERMINATED BY ','
 MAP KEYS TERMINATED BY ':'
 STORED AS TEXTFILE
 LOCATION '/proyecto/distrito'
 tblproperties("skip.header.line.count" = "1");