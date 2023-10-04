CREATE TABLE IF NOT EXISTS "componentes" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_componentes" PRIMARY KEY("id" AUTOINCREMENT)
);
