CREATE TABLE IF NOT EXISTS "proveedores"(
    "id" INTEGER NOT NULL,
    "razon_social" TEXT NOT NULL,
    "contacto_fisico" TEXT,
    "email" TEXT,
    "telefono" TEXT,
    "direccion" TEXT,
    "fecha_registro" INTEGER NOT NULL,
    "fecha_alta" INTEGER,
    "fecha_baja" INTEGER,
    CONSTRAINT "PK_proveedores" PRIMARY KEY("id" AUTOINCREMENT)
);