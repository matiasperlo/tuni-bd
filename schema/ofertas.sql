CREATE TABLE IF NOT EXISTS "ofertas" (
	"id" INTEGER NOT NULL,
    "id_articulo" INTEGER NOT NULL,
    "porcentaje" REAL NOT NULL,
    "fecha_alta" INTEGER NOT NULL,
    "fecha_expiracion" INTEGER NOT NULL,
    "descripcion" INTEGER NOT NULL,
	CONSTRAINT "PK_ofertas" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_articulos__ofertas" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
);
