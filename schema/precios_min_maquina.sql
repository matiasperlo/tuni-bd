CREATE TABLE IF NOT EXISTS "precios_min_maquina" (
	"id" INTEGER NOT NULL,
	"id_maquina" INTEGER NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"costo_min" REAL NOT NULL,
	CONSTRAINT "PK_precios_min_maquina" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_maquinas__precios_min_maquina" FOREIGN KEY("id_maquina") REFERENCES "maquinas"("id")
);
