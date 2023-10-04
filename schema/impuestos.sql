CREATE TABLE IF NOT EXISTS "impuestos" (
	"id" INTEGER NOT NULL,
	"id_tipo_impuesto" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"porcentaje" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_impuestos" PRIMARY KEY("id" AUTOINCREMENT)
);
