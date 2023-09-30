-- CREATE TABLE IF NOT EXISTS "grupos_componente"(
-- 	"id", INTEGER NOT NULL,
-- 	"nombre" TEXT NOT NULL,
-- 	CONSTRAINT "PK_grupos_componente" PRIMARY KEY("id" AUTOINCREMENT)
-- );

BEGIN TRANSACTION;
DROP TABLE IF EXISTS "proveedores";
DROP TABLE IF EXISTS "texturas";
DROP TABLE IF EXISTS "tipos_medida";
DROP TABLE IF EXISTS "medidas_componentes";
DROP TABLE IF EXISTS "medidas_pieza";
DROP TABLE IF EXISTS "componentes";
DROP TABLE IF EXISTS "precios_componente";
DROP TABLE IF EXISTS "piezas_articulo";
DROP TABLE IF EXISTS "articulos";
DROP TABLE IF EXISTS "disenios";
DROP TABLE IF EXISTS "precios_articulo";
DROP TABLE IF EXISTS "precios_hs_hombre";
DROP TABLE IF EXISTS "precios_hs_maquina";
DROP TABLE IF EXISTS "tipos_impuesto";
DROP TABLE IF EXISTS "categorias_articulo";
DROP TABLE IF EXISTS "usuarios";
DROP TABLE IF EXISTS "roles";
DROP TABLE IF EXISTS "permisos";
DROP TABLE IF EXISTS "impuestos";
DROP TABLE IF EXISTS "articulos_Y_categorias";
DROP TABLE IF EXISTS "articulos_Y_impuestos";
DROP TABLE IF EXISTS "roles_Y_permisos";
DROP TABLE IF EXISTS "disenios_articulo";
DROP TABLE IF EXISTS "componentes_Y_texturas";
DROP TABLE IF EXISTS "grupos_componente";
DROP TABLE IF EXISTS "texturas_Y_componentes";
COMMIT;


