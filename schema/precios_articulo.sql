CREATE TABLE IF NOT EXISTS "precios_articulo" (
	"id_articulo" INTEGER NOT NULL,
	"fecha" INTEGER NOT NULL,
	"costo" INTEGER NOT NULL,
	"precio_mayorista" INTEGER NOT NULL,
	"precio_minorista" REAL NOT NULL,
	CONSTRAINT "PK_precios_articulo" PRIMARY KEY("id_articulo", "fecha"),
	CONSTRAINT "FK_articulos__precios_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
);
