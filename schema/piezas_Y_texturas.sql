CREATE TABLE IF NOT EXISTS "piezas_Y_texturas"(
	"id_pieza" INTEGER NOT NULL,
	"id_textura" INTEGER NOT NULL,
	CONSTRAINT "PK_piezas_Y_texturas" PRIMARY KEY("id_pieza", "id_textura"),
	CONSTRAINT "FK_piezas__piezas_Y_texturas" FOREIGN KEY("id_pieza") REFERENCES "piezas_articulo"("id"),
	CONSTRAINT "FK_texturas__piezas_Y_texturas" FOREIGN KEY("id_textura") REFERENCES "texturas"("id")
);
