CREATE TABLE IF NOT EXISTS "categorias_articulo" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_categorias_articulo" PRIMARY KEY("id" AUTOINCREMENT)
);
