CREATE TABLE IF NOT EXISTS "precios_hs_maquina" (
	"id" INTEGER NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"precio_hs" REAL NOT NULL,
	CONSTRAINT "PK_precios_hs_maquina" PRIMARY KEY("id" AUTOINCREMENT)
);
