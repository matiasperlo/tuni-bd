CREATE TABLE IF NOT EXISTS "maquinas"(
    "id" INTEGER NOT NULL,
    "marca" TEXT,
    "modelo" TEXT,
    "tipo" TEXT,
    "descripcion" TEXT,
    CONSTRAINT "PK_maquinas" PRIMARY KEY("id" AUTOINCREMENT)
);