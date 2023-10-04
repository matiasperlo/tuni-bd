CREATE TABLE IF NOT EXISTS "roles_Y_permisos" (
	"id_rol"	INTEGER NOT NULL,
	"id_permiso"	INTEGER NOT NULL,
	CONSTRAINT "PK_roles_Y_permisos" PRIMARY KEY("id_rol","id_permiso"),
	CONSTRAINT "FK_roles__roles_Y_permisos" FOREIGN KEY("id_rol") REFERENCES "roles"("id"),
	CONSTRAINT "FK_permisos__roles_Y_permisos" FOREIGN KEY("id_permiso") REFERENCES "permisos"("id")
);
