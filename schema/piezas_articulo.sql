CREATE TABLE IF NOT EXISTS "piezas_articulo" (
	"id" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"id_articulo" INTEGER NOT NULL,
	"descripcion" TEXT NOT NULL,
	"cant_piezas" INTEGER NOT NULL,
	"id_maquina" INTEGER,
	"min_maquina" INTEGER,
	CONSTRAINT "PK_piezas_articulo" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_componente__pieza_articulo" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_articulos__pieza_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_maquinas__pieza_articulo" FOREIGN KEY("id_maquina") REFERENCES "maquinas"("id")
);
