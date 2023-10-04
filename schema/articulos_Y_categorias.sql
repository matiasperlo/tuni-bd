CREATE TABLE IF NOT EXISTS "articulos_Y_categorias" (
	"id_articulo"	INTEGER NOT NULL,
	"id_categoria"	INTEGER NOT NULL,
	CONSTRAINT "PK_articulos_Y_categorias" PRIMARY KEY("id_articulo","id_categoria"),
	CONSTRAINT "FK_articulos__articulos_Y_categorias" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_categoria__articulos_Y_categorias" FOREIGN KEY("id_categoria") REFERENCES "categorias_articulo"("id")
);
