INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'articulos', 'articulos', 2, 'CREATE TABLE "articulos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_registro" INTEGER NOT NULL,
	"fecha_alta" INTEGER,
	"fecha_modificacion" INTEGER,
	"activo" INTEGER,
	"foto_principal" TEXT,
	"min_hombre" INTEGER,
	CONSTRAINT "PK_articulos" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'sqlite_sequence', 'sqlite_sequence', 3, 'CREATE TABLE sqlite_sequence(name,seq)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'componentes', 'componentes', 4, 'CREATE TABLE "componentes" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_registro" INTEGER,
	"fecha_modificacion" INTEGER,
	"activo" INTEGER,
	"id_textura" INTEGER,
	CONSTRAINT "PK_componentes" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_texturas__componentes" FOREIGN KEY("id_textura") REFERENCES "texturas"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'disenios', 'disenios', 5, 'CREATE TABLE "disenios" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_disenios" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'disenios_articulo', 'disenios_articulo', 6, 'CREATE TABLE "disenios_articulo" (
	"id_articulo"	INTEGER NOT NULL,
	"id_disenio"	INTEGER NOT NULL,
	"foto_articulo"	TEXT,
	CONSTRAINT "PK_disenios_articulo" PRIMARY KEY("id_articulo","id_disenio"),
	CONSTRAINT "FK_articulos_disenios_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_disenios__disenios_articulo" FOREIGN KEY("id_disenio") REFERENCES "disenios"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_disenios_articulo_1', 'disenios_articulo', 7, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'impuestos', 'impuestos', 8, 'CREATE TABLE "impuestos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"porcentaje" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_impuestos" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'medidas_componente', 'medidas_componente', 9, 'CREATE TABLE "medidas_componente" (
	"id_tipo_medida" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	CONSTRAINT "PK_medidas_componente" PRIMARY KEY("id_tipo_medida", "id_componente"),
	CONSTRAINT "FK_tipo_medidas__medidas" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_componentes__medidas" FOREIGN KEY("id_componente") REFERENCES "componentes"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_medidas_componente_1', 'medidas_componente', 10, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'medidas_pieza', 'medidas_pieza', 11, 'CREATE TABLE "medidas_pieza" (
	"id_tipo_medida" INTEGER NOT NULL,
	"id_pieza" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	CONSTRAINT "PK_medidas_pieza" PRIMARY KEY("id_tipo_medida" , "id_pieza"),
	CONSTRAINT "FK_tipo_medidas__medidas_pieza" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_piezas__medidas_pieza" FOREIGN KEY("id_pieza") REFERENCES "piezas_articulo"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_medidas_pieza_1', 'medidas_pieza', 12, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'ofertas', 'ofertas', 13, 'CREATE TABLE "ofertas" (
	"id" INTEGER NOT NULL,
    "id_articulo" INTEGER NOT NULL,
    "porcentaje" REAL NOT NULL,
    "fecha_alta" INTEGER NOT NULL,
    "fecha_expiracion" INTEGER NOT NULL,
    "descripcion" INTEGER NOT NULL,
	CONSTRAINT "PK_ofertas" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_articulos__ofertas" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'piezas_articulo', 'piezas_articulo', 14, 'CREATE TABLE "piezas_articulo" (
	"id" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"id_articulo" INTEGER NOT NULL,
	"descripcion" TEXT NOT NULL,
	"cant_piezas" INTEGER NOT NULL,
	"cant_componentes" INTEGER NOT NULL,
	"id_maquina" INTEGER,
	"min_maquina" INTEGER,
	CONSTRAINT "PK_piezas_articulo" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_componente__pieza_articulo" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_articulos__pieza_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_maquinas__pieza_articulo" FOREIGN KEY("id_maquina") REFERENCES "maquinas"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'precios_articulo_Y_componentes', 'precios_articulo_Y_componentes', 15, 'CREATE TABLE "precios_articulo_Y_componentes" (
	"id_articulo" INTEGER NOT NULL,
	"fecha" INTEGER NOT NULL,
	"id_precio_componente" INTEGER NOT NULL,
	CONSTRAINT "PK_precios_articulo_Y_componentes" PRIMARY KEY("id_articulo", "fecha", "id_precio_componente"),
    CONSTRAINT "FK_id_articulo" FOREIGN KEY("id_articulo", "fecha") REFERENCES "precios_articulo"("id_articulo", "fecha"),
    CONSTRAINT "FK_id_precio_componente" FOREIGN KEY("id_precio_componente") REFERENCES "precios_componente"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_precios_articulo_Y_componentes_1', 'precios_articulo_Y_componentes', 16, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'precios_articulo', 'precios_articulo', 19, 'CREATE TABLE "precios_articulo" (
	"id_articulo" INTEGER NOT NULL,
	"fecha" INTEGER NOT NULL,
	"costo" INTEGER NOT NULL,
	"precio_mayorista" INTEGER NOT NULL,
	"precio_minorista" REAL NOT NULL,
	CONSTRAINT "PK_precios_articulo" PRIMARY KEY("id_articulo", "fecha"),
	CONSTRAINT "FK_articulos__precios_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_precios_articulo_1', 'precios_articulo', 20, null);
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'precios_componente', 'precios_componente', 21, 'CREATE TABLE "precios_componente"(
    "id" INTEGER NOT NULL,
    "id_componente" INTEGER NOT NULL,
    "id_proveedor" INTEGER NOT NULL,
    "importe" REAL NOT NULL,
    "fecha_registro" INTEGER NOT NULL,
    "fecha_alta" INTEGER,
    "activo" INTEGER,
    "presentacion" INTEGER NOT NULL, fecha_modificacion varchar(255),
    CONSTRAINT "PK_precios_componente" PRIMARY KEY("id" AUTOINCREMENT),
    CONSTRAINT "FK_componentes__precios_componente" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
    CONSTRAINT "FK_proveedores__precios_componente" FOREIGN KEY("id_proveedor") REFERENCES "proveedores"("id")
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'precios_min_hombre', 'precios_min_hombre', 22, 'CREATE TABLE "precios_min_hombre" (
	"id" INTEGER NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"costo_min" REAL NOT NULL,
	CONSTRAINT "PK_precios_min_hombre" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'precios_min_maquina', 'precios_min_maquina', 23, 'CREATE TABLE "precios_min_maquina" (
	"id" INTEGER NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"costo_min" REAL NOT NULL,
	CONSTRAINT "PK_precios_min_maquina" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'proveedores', 'proveedores', 24, 'CREATE TABLE "proveedores"(
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
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'texturas', 'texturas', 25, 'CREATE TABLE "texturas" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_texturas" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'tipos_medida', 'tipos_medida', 26, 'CREATE TABLE "tipos_medida" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	CONSTRAINT "PK_tipos_medida" PRIMARY KEY("id" AUTOINCREMENT)
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'maquinas', 'maquinas', 27, 'CREATE TABLE maquinas (id integer, descripcion varchar(100), marca varchar(50), modelo varchar(50), tipo varchar(50), primary key (id))');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'precios_articulo_y_componente', 'precios_articulo_y_componente', 28, 'CREATE TABLE precios_articulo_y_componente (id_articulo integer not null, fecha integer not null, id_precio_componente integer not null, primary key (id_articulo, fecha, id_precio_componente))');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'sqlite_autoindex_precios_articulo_y_componente_1', 'precios_articulo_y_componente', 29, null);
