CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "proveedores" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	CONSTRAINT "PK_proveedores" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "texturas" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_materiales" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tipos_medida" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	CONSTRAINT "PK_tipos_medida" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "medidas_componentes" (
	"id_tipo_medida" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	CONSTRAINT "PK_medidas" PRIMARY KEY("id_tipo_medida", "id_componente"),
	CONSTRAINT "FK_tipo_medidas__medidas" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_componentes__medidas" FOREIGN KEY("id_componente") REFERENCES "componentes"("id")
);
CREATE TABLE IF NOT EXISTS "medidas_pieza" (
	"id_tipo_medida" INTEGER NOT NULL,
	"id_pieza" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	CONSTRAINT "PK_medidas" PRIMARY KEY("id_tipo_medida" , "id_pieza"),
	CONSTRAINT "FK_tipo_medidas__medidas" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_piezas__medidas" FOREIGN KEY("id_pieza") REFERENCES "piezas_articulo"("id")
);
CREATE TABLE IF NOT EXISTS "componentes" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_componentes" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "piezas_articulo" (
	"id" INTEGER NOT NULL,
	"descripcion" TEXT NOT NULL,
	"cantidad" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"id_articulo" INTEGER NOT NULL,
	CONSTRAINT "PK_piezas_articulo" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_componente__pieza_articulo" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_articulo__pieza_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
);
CREATE TABLE IF NOT EXISTS "articulos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_alta" INTEGER NOT NULL,
	"fecha_baja" INTEGER,
	"minutos_hs_hombre" INTEGER,
	"minutos_hs_maquina" INTEGER,
	"foto" TEXT,
	CONSTRAINT "PK_articulos" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "disenios" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_disenios" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "precios_articulo" (
	"id" INTEGER NOT NULL,
	"precio" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"id_articulo" INTEGER NOT NULL,
	"id_hs_hombre" INTEGER NOT NULL,
	"id_hs_maquina" INTEGER NOT NULL,
	CONSTRAINT "PK_precios_articulo" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_articulos__precios_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_precios_hs_hombre__precios_articulo" FOREIGN KEY("id_hs_hombre") REFERENCES "precios_hs_hombre"("id"),
	CONSTRAINT "FK_precios_hs_maquina__precios_articulo" FOREIGN KEY("id_hs_maquina") REFERENCES "precios_hs_maquina"("id")
);
CREATE TABLE IF NOT EXISTS "precios_hs_hombre" (
	"id" INTEGER NOT NULL,
	"precio_hs" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_precios_hs_hombre" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "precios_hs_maquina" (
	"id" INTEGER NOT NULL,
	"precio_hs" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_precios_hs_maquina" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "categorias_articulo" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_categorias_articulo" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "usuarios" (
	"id" INTEGER NOT NULL,
	"nombre_completo" TEXT NOT NULL,
	"id_rol" INTEGER NOT NULL,
	CONSTRAINT "PK_usuarios" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_roles_usuarios" FOREIGN KEY("id_rol") REFERENCES "roles"("id")
);
CREATE TABLE IF NOT EXISTS "roles" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_roles" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "permisos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_permisos" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "impuestos" (
	"id" INTEGER NOT NULL,
	"id_tipo_impuesto" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"porcentaje" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_impuestos" PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "articulos_Y_categorias" (
	"id_articulo"	INTEGER NOT NULL,
	"id_categoria"	INTEGER NOT NULL,
	CONSTRAINT "PK_articulos_Y_categorias" PRIMARY KEY("id_articulo","id_categoria"),
	CONSTRAINT "FK_articulos__articulos_Y_categorias" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_categoria__articulos_Y_categorias" FOREIGN KEY("id_categoria") REFERENCES "categorias_articulo"("id")
);
CREATE TABLE IF NOT EXISTS "articulos_Y_impuestos" (
	"id_articulo"	INTEGER NOT NULL,
	"id_impuesto"	INTEGER NOT NULL,
	CONSTRAINT "FK_impuestos__articulos_Y_impuestos" FOREIGN KEY("id_impuesto") REFERENCES "impuestos"("id"),
	CONSTRAINT "FK_articulos__articulos_Y_impuestos" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "PK_precios_hs_maquina" PRIMARY KEY("id_articulo","id_impuesto")
);
CREATE TABLE IF NOT EXISTS "roles_Y_permisos" (
	"id_rol"	INTEGER NOT NULL,
	"id_permiso"	INTEGER NOT NULL,
	CONSTRAINT "PK_roles_Y_permisos" PRIMARY KEY("id_rol","id_permiso"),
	CONSTRAINT "FK_roles__roles_Y_permisos" FOREIGN KEY("id_rol") REFERENCES "roles"("id"),
	CONSTRAINT "FK_permisos__roles_Y_permisos" FOREIGN KEY("id_permiso") REFERENCES "permisos"("id")
);
CREATE TABLE IF NOT EXISTS "disenios_articulo" (
	"id_articulo"	INTEGER NOT NULL,
	"id_disenio"	INTEGER NOT NULL,
	"foto"	TEXT,
	CONSTRAINT "PK_disenios_articulo" PRIMARY KEY("id_articulo","id_disenio"),
	CONSTRAINT "FK_articulos_disenios" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_disenios__disenios_articulo" FOREIGN KEY("id_disenio") REFERENCES "disenios"("id")
);
CREATE TABLE IF NOT EXISTS "precios_componente" (
	"id_componente"	INTEGER NOT NULL,
	"id_proveedor"	INTEGER NOT NULL,
	"id_textura"	INTEGER NOT NULL,
	"importe"	REAL NOT NULL,
	"fecha_alta"	INTEGER NOT NULL,
	CONSTRAINT "FK_componentes__precios_componente" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_proveedores__precios_componente" FOREIGN KEY("id_proveedor") REFERENCES "proveedores"("id"),
	CONSTRAINT "FK_texturas_componente__precios_componente" FOREIGN KEY("id_textura") REFERENCES "texturas"("id"),
	CONSTRAINT "PK_precios" PRIMARY KEY("id_textura","id_proveedor","id_componente")
);
CREATE TABLE IF NOT EXISTS "texturas_Y_componentes" (
	"id_componente" INTEGER NOT NULL,
	"id_textura" INTEGER NOT NULL,
	CONSTRAINT "FK_texturas_Y_componentes" PRIMARY KEY("id_componente","id_textura"),
	CONSTRAINT "FK___texturas_Y_componentes" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK___texturas_Y_componentes" FOREIGN KEY("id_textura") REFERENCES "texturas"("id")
);
