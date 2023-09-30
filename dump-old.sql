PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "proveedores" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	CONSTRAINT "PK_proveedores" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO proveedores VALUES(1,'LUMADI');
INSERT INTO proveedores VALUES(2,'MONACHESSI');
INSERT INTO proveedores VALUES(3,'MAD MISIONERA POSSE');
CREATE TABLE IF NOT EXISTS "texturas" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_materiales" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO texturas VALUES(1,'MDF CRUDO',NULL);
INSERT INTO texturas VALUES(2,'MELAMINA BLANCO',NULL);
INSERT INTO texturas VALUES(3,'MELAMINA NEGRO',NULL);
INSERT INTO texturas VALUES(4,'MELAMINA EVEREST',NULL);
INSERT INTO texturas VALUES(5,'MELAMINA HELSINSKI',NULL);
INSERT INTO texturas VALUES(6,'MELAMINA OLMO FINLANDES',NULL);
INSERT INTO texturas VALUES(7,'MELAMINA TERRARUM',NULL);
CREATE TABLE IF NOT EXISTS "tipos_medida" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	CONSTRAINT "PK_tipos_medida" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO tipos_medida VALUES(1,'Largo');
INSERT INTO tipos_medida VALUES(2,'Ancho');
INSERT INTO tipos_medida VALUES(3,'Espesor');
CREATE TABLE IF NOT EXISTS "medidas_componentes" (
	"id" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	"id_tipo_medida" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	CONSTRAINT "PK_medidas" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_tipo_medidas__medidas" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_componentes__medidas" FOREIGN KEY("id_componente") REFERENCES "componentes"("id")
);
INSERT INTO medidas_componentes VALUES(1,15.0,3,1);
INSERT INTO medidas_componentes VALUES(2,1830.0,1,1);
INSERT INTO medidas_componentes VALUES(3,2750.0,2,1);
INSERT INTO medidas_componentes VALUES(4,15.0,3,2);
INSERT INTO medidas_componentes VALUES(5,1830.0,1,2);
INSERT INTO medidas_componentes VALUES(6,2750.0,2,2);
INSERT INTO medidas_componentes VALUES(7,15.0,3,3);
INSERT INTO medidas_componentes VALUES(8,1830.0,1,3);
INSERT INTO medidas_componentes VALUES(9,2750.0,2,3);
CREATE TABLE IF NOT EXISTS "medidas_pieza" (
	"id" INTEGER NOT NULL,
	"valor" REAL NOT NULL,
	"id_tipo_medida" INTEGER NOT NULL,
	"id_pieza" INTEGER NOT NULL,
	CONSTRAINT "PK_medidas" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_tipo_medidas__medidas" FOREIGN KEY("id_tipo_medida") REFERENCES "tipos_medida"("id"),
	CONSTRAINT "FK_piezas__medidas" FOREIGN KEY("id_pieza") REFERENCES "piezas_articulo"("id")
);
INSERT INTO medidas_pieza VALUES(1,15.0,3,2);
INSERT INTO medidas_pieza VALUES(2,1830.0,1,2);
INSERT INTO medidas_pieza VALUES(3,640.0,2,2);
INSERT INTO medidas_pieza VALUES(4,15.0,3,3);
INSERT INTO medidas_pieza VALUES(5,250.0,1,3);
INSERT INTO medidas_pieza VALUES(6,250.0,2,3);
CREATE TABLE IF NOT EXISTS "componentes" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"id_textura" INTEGER,
	CONSTRAINT "PK_componentes" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_texturas__componentes" FOREIGN KEY("id_textura") REFERENCES "texturas"("id")
);
INSERT INTO componentes VALUES(1,'MDF CRUDO 15mm','',NULL);
INSERT INTO componentes VALUES(2,'MDF PINTADO 15mm ',NULL,NULL);
INSERT INTO componentes VALUES(3,'MDF MELAMINA TEXTURIZADO 18mm',NULL,4);
INSERT INTO componentes VALUES(4,'CHAPA 1,25 mm',NULL,NULL);
INSERT INTO componentes VALUES(5,'MDF MELAMINA BLANCA 15mm',NULL,NULL);
INSERT INTO componentes VALUES(6,'Regaton','soporte de patas para los paneles',NULL);
CREATE TABLE IF NOT EXISTS "precios_componente" (
	"id" INTEGER NOT NULL,
	"importe" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	"id_componente" INTEGER NOT NULL,
	"id_proveedor" INTEGER NOT NULL,
	CONSTRAINT "PK_precios" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_componentes__precios" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_proveedores__precios" FOREIGN KEY("id_proveedor") REFERENCES "proveedores"("id")
);
INSERT INTO precios_componente VALUES(1,15940.0,1680369453,1,1);
INSERT INTO precios_componente VALUES(2,23610.0,1680369453,2,1);
INSERT INTO precios_componente VALUES(3,21270.0,1680369453,5,1);
INSERT INTO precios_componente VALUES(4,28900.0,1680369453,3,1);
CREATE TABLE IF NOT EXISTS "piezas_articulo" (
	"id" INTEGER NOT NULL,
	"cantidad" INTEGER NOT NULL,
	"costo_subtotal" REAL,
	"id_componente" INTEGER NOT NULL,
	"id_articulo" INTEGER NOT NULL,
	CONSTRAINT "PK_piezas_articulo" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_componente__pieza_articulo" FOREIGN KEY("id_componente") REFERENCES "componentes"("id"),
	CONSTRAINT "FK_articulo__pieza_articulo" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id")
);
INSERT INTO piezas_articulo VALUES(1,4,280.0,6,1);
INSERT INTO piezas_articulo VALUES(2,1,18669.0,1,1);
INSERT INTO piezas_articulo VALUES(3,2,5318.0,1,1);
CREATE TABLE IF NOT EXISTS "articulos" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	"fecha_alta" INTEGER NOT NULL,
	"fecha_baja" INTEGER,
	"minutos_hs_hombre" INTEGER,
	"minutos_hs_maquina" INTEGER,
	CONSTRAINT "PK_articulos" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO articulos VALUES(1,'Divisorio vertical para vidriera','Un divisorio vertical perfecto para vidrieras de negocios de ropa y calzado.',1695651453,NULL,120,60);
INSERT INTO articulos VALUES(2,'Divisorio estante multifuncion','Un divisorio vertical que cuenta con un estante bajo ideal para reposar plantas y decoraciones de interior.',1695653626,NULL,100,80);
INSERT INTO articulos VALUES(3,'Respaldo para sommier','Un respaldo con diseño realizado sobre placa que proporciona un gran estilo a camas de doble plaza.',1695653626,NULL,120,120);
INSERT INTO articulos VALUES(4,'Biombo Movil','Un biombo separador de ambientes con muchos diseños disponibles.',1695653626,NULL,60,100);
INSERT INTO articulos VALUES(5,'Mesa ratonera texturizada','Un mesita para espacios de living que cuenta con muchos diseños disponibles.',1695653626,NULL,60,40);
CREATE TABLE IF NOT EXISTS "disenios" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_disenios" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO disenios VALUES(1,'PALM',NULL);
INSERT INTO disenios VALUES(2,'GRID',NULL);
INSERT INTO disenios VALUES(3,'HERBA',NULL);
INSERT INTO disenios VALUES(4,'HILA',NULL);
INSERT INTO disenios VALUES(5,'BLOK',NULL);
INSERT INTO disenios VALUES(6,'ARABETTO',NULL);
INSERT INTO disenios VALUES(7,'PETRA',NULL);
INSERT INTO disenios VALUES(8,'NETT',NULL);
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
INSERT INTO precios_hs_hombre VALUES(1,500.0,1695659860);
CREATE TABLE IF NOT EXISTS "precios_hs_maquina" (
	"id" INTEGER NOT NULL,
	"precio_hs" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_precios_hs_maquina" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO precios_hs_maquina VALUES(1,200.0,1695659921);
CREATE TABLE IF NOT EXISTS "tipos_impuesto" (
	"id" INTEGER NOT NULL,
	"tipo" TEXT NOT NULL,
	CONSTRAINT "PK_tipos_impuesto" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO tipos_impuesto VALUES(1,'Monto Fijo');
INSERT INTO tipos_impuesto VALUES(2,'Porcentaje');
CREATE TABLE IF NOT EXISTS "categorias_articulo" (
	"id" INTEGER NOT NULL,
	"nombre" TEXT NOT NULL,
	"descripcion" TEXT,
	CONSTRAINT "PK_categorias_articulo" PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO categorias_articulo VALUES(1,'Barandas','Barandillas para escaleras');
INSERT INTO categorias_articulo VALUES(2,'Divisores de ambiente',NULL);
INSERT INTO categorias_articulo VALUES(3,'Puertas',NULL);
INSERT INTO categorias_articulo VALUES(4,'Espejos',NULL);
INSERT INTO categorias_articulo VALUES(5,'Adornos',NULL);
INSERT INTO categorias_articulo VALUES(6,'Paneles de exhibición',NULL);
INSERT INTO categorias_articulo VALUES(7,'Letras',NULL);
INSERT INTO categorias_articulo VALUES(8,'Cuadros',NULL);
INSERT INTO categorias_articulo VALUES(9,'Biombos',NULL);
INSERT INTO categorias_articulo VALUES(10,'Respaldos para cama',NULL);
INSERT INTO categorias_articulo VALUES(11,'Adornos',NULL);
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
	"monto" REAL NOT NULL,
	"fecha_alta" INTEGER NOT NULL,
	CONSTRAINT "PK_impuestos" PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "FK_articulos__precios_articulo" FOREIGN KEY("id_tipo_impuesto") REFERENCES "tipos_impuesto"("id")
);
INSERT INTO impuestos VALUES(1,2,'IVA','Impuesto al Valor Agregado',0.209999999999999992,1695659860);
CREATE TABLE IF NOT EXISTS "articulos_Y_categorias" (
	"id_articulo"	INTEGER NOT NULL,
	"id_categoria"	INTEGER NOT NULL,
	CONSTRAINT "PK_articulos_Y_categorias" PRIMARY KEY("id_articulo","id_categoria"),
	CONSTRAINT "FK_articulos__articulos_Y_categorias" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "FK_categoria__articulos_Y_categorias" FOREIGN KEY("id_categoria") REFERENCES "categorias_articulo"("id")
);
INSERT INTO articulos_Y_categorias VALUES(1,2);
INSERT INTO articulos_Y_categorias VALUES(2,2);
INSERT INTO articulos_Y_categorias VALUES(3,10);
INSERT INTO articulos_Y_categorias VALUES(4,9);
CREATE TABLE IF NOT EXISTS "articulos_Y_impuestos" (
	"id_articulo"	INTEGER NOT NULL,
	"id_impuesto"	INTEGER NOT NULL,
	CONSTRAINT "FK_impuestos__articulos_Y_impuestos" FOREIGN KEY("id_impuesto") REFERENCES "impuestos"("id"),
	CONSTRAINT "FK_articulos__articulos_Y_impuestos" FOREIGN KEY("id_articulo") REFERENCES "articulos"("id"),
	CONSTRAINT "PK_precios_hs_maquina" PRIMARY KEY("id_articulo","id_impuesto")
);
INSERT INTO articulos_Y_impuestos VALUES(1,1);
INSERT INTO articulos_Y_impuestos VALUES(2,1);
INSERT INTO articulos_Y_impuestos VALUES(3,1);
INSERT INTO articulos_Y_impuestos VALUES(4,1);
INSERT INTO articulos_Y_impuestos VALUES(5,1);
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
INSERT INTO disenios_articulo VALUES(1,7,'https://instagram.fcor10-3.fna.fbcdn.net/v/t51.2885-15/327422411_141618328764072_2443494420044673126_n.jpg?stp=dst-jpg_e15&_nc_ht=instagram.fcor10-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=5Slgjo027iUAX-N77Qj&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAyNjAzMDgxMDg1MTM4MzgyMQ%3D%3D.2-ccb7-5&oh=00_AfCRh6dx3h-y9Ufk7zHI_C5eNPqGHl5P9G3slEAo4jSpXA&oe=65156362&_nc_sid=ee9879');
INSERT INTO disenios_articulo VALUES(2,7,'https://instagram.fcor10-3.fna.fbcdn.net/v/t51.2885-15/327799497_548094144041335_9070489556200562198_n.jpg?stp=dst-jpg_e15&_nc_ht=instagram.fcor10-3.fna.fbcdn.net&_nc_cat=107&_nc_ohc=iN9flLSEKj4AX8KkNPb&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAyNjAyODI5NDU3MTI0MjQyMA%3D%3D.2-ccb7-5&oh=00_AfBAYr4ylD2KYyFoXZZ_3CwgPV3znISDV_PZNoFhDIepsw&oe=65153592&_nc_sid=ee9879');
INSERT INTO disenios_articulo VALUES(3,2,'https://instagram.fcor10-3.fna.fbcdn.net/v/t51.2885-15/233796636_382612806592920_3193175514151201074_n.jpg?stp=dst-jpg_e15&_nc_ht=instagram.fcor10-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=bgPiprH6hrYAX9SigcK&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjYzNDMxNDM2MTc4OTkxMDY1NA%3D%3D.2-ccb7-5&oh=00_AfCwQCxSxEIZ_VwN8jR-_HYUqYU4b37qKAIRiA7AgH1-Gg&oe=65157B9A&_nc_sid=b41fef');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('tipos_medida',3);
INSERT INTO sqlite_sequence VALUES('tipos_impuesto',2);
INSERT INTO sqlite_sequence VALUES('disenios',8);
INSERT INTO sqlite_sequence VALUES('texturas',7);
INSERT INTO sqlite_sequence VALUES('proveedores',4);
INSERT INTO sqlite_sequence VALUES('impuestos',1);
INSERT INTO sqlite_sequence VALUES('precios_hs_hombre',1);
INSERT INTO sqlite_sequence VALUES('precios_hs_maquina',1);
INSERT INTO sqlite_sequence VALUES('categorias_articulo',11);
INSERT INTO sqlite_sequence VALUES('componentes',6);
INSERT INTO sqlite_sequence VALUES('medidas_componentes',9);
INSERT INTO sqlite_sequence VALUES('precios_componente',4);
INSERT INTO sqlite_sequence VALUES('articulos',5);
INSERT INTO sqlite_sequence VALUES('piezas_articulo',3);
INSERT INTO sqlite_sequence VALUES('medidas_pieza',6);
COMMIT;
