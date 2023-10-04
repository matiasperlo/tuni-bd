CREATE TABLE IF NOT EXISTS "precios_componente_comun" (
	"id_componente"	INTEGER NOT NULL,
	"id_proveedor"	INTEGER NOT NULL,
	"fecha_alta"	INTEGER NOT NULL,
	"importe"	REAL NOT NULL,
	CONSTRAINT "FK_componentes__precios_componente" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_proveedores__precios_componente" FOREIGN KEY("id_proveedor") REFERENCES "proveedores"("id"),
	CONSTRAINT "PK_precios" PRIMARY KEY("id_proveedor","id_componente", "fecha_alta")
);
