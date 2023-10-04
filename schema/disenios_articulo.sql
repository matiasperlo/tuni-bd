CREATE TABLE IF NOT EXISTS "disenios_articulo" (
	"id_articulo"	INTEGER NOT NULL,
	"id_disenio"	INTEGER NOT NULL,
	"foto_articulo"	TEXT,
	CONSTRAINT "PK_disenios_articulo" PRIMARY KEY("id_articulo","id_disenio"),
	CONSTRAINT "FK_articulos_disenios_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_disenios__disenios_articulo" FOREIGN KEY("id_disenio") REFERENCES "disenios"("id")
);
