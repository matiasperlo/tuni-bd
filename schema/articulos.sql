CREATE TABLE IF NOT EXISTS "articulos" (
	"id" INTEGER NOT NULL,
	"codigo" TEXT,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_registro" INTEGER NOT NULL,
	"fecha_alta" INTEGER,
	"fecha_modificacion" INTEGER,
	"activo" INTEGER,
	"foto_principal" TEXT,
	"min_hombre" INTEGER,
	CONSTRAINT "PK_articulos" PRIMARY KEY("id" AUTOINCREMENT)
);
