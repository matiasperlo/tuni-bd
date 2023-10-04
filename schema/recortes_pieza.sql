CREATE TABLE IF NOT EXISTS "recortes_pieza" (
	"id_tipo_medida" INTEGER NOT NULL,
	"id_pieza" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	CONSTRAINT "PK_recortes_pieza" PRIMARY KEY("id_tipo_medida" , "id_pieza"),
	CONSTRAINT "FK_tipo_medidas__recortes_pieza" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_piezas__recortes_pieza" FOREIGN KEY("id_pieza") REFERENCES "piezas_articulo"("id")
);
