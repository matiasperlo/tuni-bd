CREATE TABLE IF NOT EXISTS "piezas_articulo" (
	"id" INTEGER NOT NULL,
	"descripcion" TEXT NOT NULL,
	"cantidad" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"id_articulo" INTEGER NOT NULL,
	CONSTRAINT "PK_piezas_articulo" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_componente__pieza_articulo" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_articulos__pieza_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
);
