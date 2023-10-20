CREATE TABLE IF NOT EXISTS "componentes" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_registro" INTEGER,
	"fecha_baja" INTEGER,
	"id_textura" INTEGER,
	CONSTRAINT "PK_componentes" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_texturas__componentes" FOREIGN KEY("id_textura") REFERENCES "texturas"("id")
);
