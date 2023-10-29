CREATE TABLE IF NOT EXISTS "proveedores"(
    "id" INTEGER NOT NULL,
    "razon_social" TEXT NOT NULL,
    "persona_de_contacto" TEXT,
    "email" TEXT,
    "telefono" TEXT,
    "direccion" TEXT,
    "fecha_registro" INTEGER NOT NULL,
    "fecha_modificacion" INTEGER,
    "activo" INTEGER,
    CONSTRAINT "PK_proveedores" PRIMARY KEY("id" AUTOINCREMENT)
);