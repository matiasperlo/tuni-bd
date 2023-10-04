CREATE TABLE IF NOT EXISTS "usuarios" (
	"id" INTEGER NOT NULL,
	"nombre_completo" TEXT NOT NULL,
	"id_rol" INTEGER NOT NULL,
	CONSTRAINT "PK_usuarios" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_roles_usuarios" FOREIGN KEY("id_rol") REFERENCES "roles"("id")
);
