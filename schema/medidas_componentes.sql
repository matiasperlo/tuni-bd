CREATE TABLE IF NOT EXISTS "medidas_componentes" (
	"id_tipo_medida" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	CONSTRAINT "PK_medidas" PRIMARY KEY("id_tipo_medida", "id_componente"),
	CONSTRAINT "FK_tipo_medidas__medidas" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_componentes__medidas" FOREIGN KEY("id_componente") REFERENCES "componentes"("id")
);
