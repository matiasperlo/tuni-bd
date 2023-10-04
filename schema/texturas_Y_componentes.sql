CREATE TABLE IF NOT EXISTS "texturas_Y_componentes" (
	"id_componente" INTEGER NOT NULL,
	"id_textura" INTEGER NOT NULL,
	CONSTRAINT "PK_texturas_Y_componentes" PRIMARY KEY("id_componente","id_textura"),
	CONSTRAINT "FK_componentes__texturas_Y_componentes" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_texturas__texturas_Y_componentes" FOREIGN KEY("id_textura") REFERENCES "texturas"("id")
);
