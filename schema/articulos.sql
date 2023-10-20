CREATE TABLE IF NOT EXISTS "articulos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_registro" INTEGER NOT NULL,
	"fecha_alta" INTEGER,
	"fecha_baja" INTEGER,
	"foto_principal" TEXT,
	"min_hombre" INTEGER,
	CONSTRAINT "PK_articulos" PRIMARY KEY("id" AUTOINCREMENT)
);
