CREATE TABLE IF NOT EXISTS "articulos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_alta" INTEGER NOT NULL,
	"fecha_baja" INTEGER,
	"minutos_hs_hombre" INTEGER,
	"minutos_hs_maquina" INTEGER,
	"foto_principal" TEXT,
	CONSTRAINT "PK_articulos" PRIMARY KEY("id" AUTOINCREMENT)
);
