CREATE TABLE IF NOT EXISTS "articulos_Y_impuestos" (
	"id_articulo"	INTEGER NOT NULL,
	"id_impuesto"	INTEGER NOT NULL,
	CONSTRAINT "FK_impuestos__articulos_Y_impuestos" FOREIGN KEY("id_impuesto") REFERENCES "impuestos"("id"),
	CONSTRAINT "FK_articulos__articulos_Y_impuestos" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "PK_precios_hs_maquina" PRIMARY KEY("id_articulo","id_impuesto")
);
