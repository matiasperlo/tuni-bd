CREATE TABLE IF NOT EXISTS "precios_articulo_Y_componentes" (
	"id_articulo" INTEGER NOT NULL,
	"fecha" INTEGER NOT NULL,
	"id_precio_componente" INTEGER NOT NULL,
	CONSTRAINT "PK_precios_articulo_Y_componentes" PRIMARY KEY("id_articulo", "fecha", "id_precio_componente"),
    CONSTRAINT "FK_id_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
    CONSTRAINT "FK_id_precio_componente" FOREIGN KEY("id_precio_componente") REFERENCES "precios_componente"("id")
);
