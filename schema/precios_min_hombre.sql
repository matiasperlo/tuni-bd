CREATE TABLE IF NOT EXISTS "precios_min_hombre" (
	"id" INTEGER NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"costo_min" REAL NOT NULL,
	CONSTRAINT "PK_precios_min_hombre" PRIMARY KEY("id" AUTOINCREMENT)
);
