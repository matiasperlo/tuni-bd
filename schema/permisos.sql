CREATE TABLE IF NOT EXISTS "permisos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_permisos" PRIMARY KEY("id" AUTOINCREMENT)
);