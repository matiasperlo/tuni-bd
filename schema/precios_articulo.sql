CREATE TABLE IF NOT EXISTS "precios_articulo" (
	"id_articulo" INTEGER NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"id_hs_hombre" INTEGER NOT NULL,
	"id_hs_maquina" INTEGER NOT NULL,
	"precio" REAL NOT NULL,
	CONSTRAINT "PK_precios_articulo" PRIMARY KEY("id_articulo", "fecha_alta"),
	CONSTRAINT "FK_articulos__precios_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_precios_hs_hombre__precios_articulo" FOREIGN KEY("id_hs_hombre") REFERENCES "precios_hs_hombre"("id"),
	CONSTRAINT "FK_precios_hs_maquina__precios_articulo" FOREIGN KEY("id_hs_maquina") REFERENCES "precios_hs_maquina"("id")
);
