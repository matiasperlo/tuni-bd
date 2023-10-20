CREATE TABLE IF NOT EXISTS "precios_componente"(
    "id" INTEGER NOT NULL,
    "id_componente" INTEGER NOT NULL,
    "id_proveedor" INTEGER NOT NULL,
    "importe" REAL NOT NULL,
    "fecha_registro" INTEGER NOT NULL,
    "fecha_alta" INTEGER,
    "fecha_baja" INTEGER,
    "presentacion" INTEGER NOT NULL,
    CONSTRAINT "PK_precios_componente" PRIMARY KEY("id" AUTOINCREMENT),
    CONSTRAINT "FK_componentes__precios_componente" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
    CONSTRAINT "FK_proveedores__precios_componente" FOREIGN KEY("id_proveedor") REFERENCES "proveedores"("id")
);
