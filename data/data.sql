BEGIN TRANSACTION;

-- limpia los datos
DELETE FROM proveedores;
DELETE FROM tipos_medida;
DELETE FROM disenios;
DELETE FROM texturas;
DELETE FROM componentes;
DELETE FROM medidas_componente;
DELETE FROM precios_componente;
DELETE FROM articulos;
DELETE FROM disenios_articulo;
DELETE FROM piezas_articulo;
DELETE FROM medidas_pieza;
DELETE FROM precios_articulo;
DELETE FROM precios_articulo_Y_componentes;
DELETE FROM precios_min_hombre;
DELETE FROM precios_min_maquina;

-- proveedores
INSERT INTO proveedores (id, razon_social, persona_de_contacto, email, telefono, direccion, fecha_registro, fecha_modificacion, activo) VALUES (1, 'LUMADI MADERAS SA', '', 'ventas@lumadimaderas.com.ar', '+543534920770', 'Av. Agustín Quaranta 1180, Etruria, Córdoba', 1699928217, 1699928217, 1);
INSERT INTO proveedores (id, razon_social, persona_de_contacto, email, telefono, direccion, fecha_registro, fecha_modificacion, activo) VALUES (2, 'MADERERA MISIONERA POSSE', '', 'madereramisionera@nodosud.com.ar', '+543537431892', 'Nelso Chiaretta 1350, Justiniano Posse, Córdoba', 1699928783, 1699928783, 1);
INSERT INTO proveedores (id, razon_social, persona_de_contacto, email, telefono, direccion, fecha_registro, fecha_modificacion, activo) VALUES (3, 'MONACHESSI', '', '', '', ' , , Córdoba', 1699929115, 1699929115, 0);
INSERT INTO proveedores (id, razon_social, persona_de_contacto, email, telefono, direccion, fecha_registro, fecha_modificacion, activo) VALUES (4, 'Ferretería Almafuerte', '', '', '', ' , Almafuerte, Córdoba', 1699930820, 1699930820, 1);

-- tipos medida
INSERT INTO tipos_medida (id, nombre) VALUES (1, 'largo');
INSERT INTO tipos_medida (id, nombre) VALUES (2, 'ancho');
INSERT INTO tipos_medida (id, nombre) VALUES (3, 'espesor');

-- disenios 
INSERT INTO disenios (id, nombre, descripcion) VALUES (1, 'PALM', '');
INSERT INTO disenios (id, nombre, descripcion) VALUES (2, 'GRID', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (3, 'HERBA', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (4, 'HILA', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (5, 'BLOK', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (6, 'ARABETTO', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (7, 'PETRA', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (8, 'NETT', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (9, 'CLASSIC', null);
INSERT INTO disenios (id, nombre, descripcion) VALUES (10, 'ROSÉ', null);

-- texturas
INSERT INTO texturas (id, nombre, descripcion) VALUES (1, 'CRUDO', '');
INSERT INTO texturas (id, nombre, descripcion) VALUES (2, 'HELSINSKI', 'Para los materiales con textura Helsinski');
INSERT INTO texturas (id, nombre, descripcion) VALUES (3, 'MELAMINA BLANCO', '');
INSERT INTO texturas (id, nombre, descripcion) VALUES (4, 'EVEREST', null);
INSERT INTO texturas (id, nombre, descripcion) VALUES (5, 'PINO', null);
INSERT INTO texturas (id, nombre, descripcion) VALUES (6, 'GUATAMBU', null);
INSERT INTO texturas (id, nombre, descripcion) VALUES (7, 'PINTURA BLANCA', null);
INSERT INTO texturas (id, nombre, descripcion) VALUES (8, 'PINTURA NEGRA', null);
INSERT INTO texturas (id, nombre, descripcion) VALUES (9, 'ESMALTADO SINTETICO', null);

-- componentes
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (1, 'MDF CRUDO 3mm', '', 1699764288, 1699764288, 1, 1);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (2, 'MDF CRUDO 5mm', '', 1699764487, 1699764487, 1, 1);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (3, 'MDF CRUDO 9mm', null, 1699764504, 1699764504, 1, 1);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (4, 'MDF CRUDO 12mm', '', 1699764555, 1699764555, 1, 1);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (5, 'MDF CRUDO 15mm', null, 1699764569, 1699764569, 1, 1);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (6, 'MDF CRUDO 18mm', null, 1699764585, 1699764585, 0, 1);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (7, 'MDF BLANCO 15mm', '', 1699764692, 1699764692, 1, 3);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (8, 'MDF BLANCO 18mm', null, 1699764716, 1699764716, 1, 3);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (9, 'MDF HELSINSKI 18mm', null, 1699764754, 1699764754, 0, 2);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (10, 'MDF EVEREST 18mm', null, 1699764782, 1699764782, 1, 4);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (11, 'REGATON RECTANGULAR', 'Regatones rectangulares de goma para soporte de patas', 1699929517, 1699929517, 1, null);
INSERT INTO componentes (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, id_textura) VALUES (12, 'MOTOR RELOJ PARED', 'Mecanismo para relojes de pared', 1699929694, 1699929694, 1, null);

-- medidas componente
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 1, 3);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 1, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 1, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 2, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 2, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 2, 5);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 3, 9);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 3, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 3, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 4, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 4, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 4, 12);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 5, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 5, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 5, 15);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 6, 18);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 6, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 6, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 7, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 7, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 7, 15);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 8, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 8, 18);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 8, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 9, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 9, 1830);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 9, 18);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (3, 10, 18);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (1, 10, 2750);
INSERT INTO medidas_componente (id_tipo_medida, id_componente, valor) VALUES (2, 10, 1830);

-- precios componente
INSERT INTO precios_componente (id, id_componente, id_proveedor, importe, fecha_registro, activo, presentacion) VALUES (1, 5, 1, 15940, 1699930354, 1, 1);
INSERT INTO precios_componente (id, id_componente, id_proveedor, importe, fecha_registro, activo, presentacion) VALUES (2, 5, 2, 11395, 1699930386, 1, 1);
INSERT INTO precios_componente (id, id_componente, id_proveedor, importe, fecha_registro, activo, presentacion) VALUES (3, 5, 1, 18940, 1699930409, 1, 2);
INSERT INTO precios_componente (id, id_componente, id_proveedor, importe, fecha_registro, activo, presentacion) VALUES (4, 11, 4, 300, 1699930864, 1, 1);
INSERT INTO precios_componente (id, id_componente, id_proveedor, importe, fecha_registro, activo, presentacion) VALUES (5, 11, 4, 1000, 1699930872, 1, 4);

-- articulos
INSERT INTO articulos (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, foto_principal, min_hombre) VALUES (3, 'Espejo de Pared', 'Un espejo de pared con diferentes modelos disponibles para salas de espera y probadores.', 1699930030, 1699930030, 0, null, 0);
INSERT INTO articulos (id, nombre, descripcion, fecha_registro, fecha_modificacion, activo, foto_principal, min_hombre) VALUES (14, 'Articulos Completo', 'Tengo todos los campos ', 1700581849, 1700581849, 1, 'ad5bda27-9151-4bd6-909a-a4ffeee14390.jpeg', 120);

-- disenios articulo
INSERT INTO disenios_articulo (id_articulo, id_disenio, foto_articulo) VALUES (14, 5, '02c76c49-7822-438b-89fd-a67215b9c2e4.jpeg');
INSERT INTO disenios_articulo (id_articulo, id_disenio, foto_articulo) VALUES (14, 9, '0e17ff74-e93b-4645-a681-46a39a51982b.jpeg');
INSERT INTO disenios_articulo (id_articulo, id_disenio, foto_articulo) VALUES (14, 6, '2b9cb3a2-944f-4d84-8d3d-c3436bb735ba.jpeg');
INSERT INTO disenios_articulo (id_articulo, id_disenio, foto_articulo) VALUES (16, 8, 'pngtree-simple-creative-minimalist-line-black-background-image_518433.jpg');

-- piezas articulo
INSERT INTO piezas_articulo (id, id_componente, id_articulo, descripcion, cant_piezas, id_maquina, min_maquina) VALUES (4, 5, 14, 'Patas', 4, 0, 30);
INSERT INTO piezas_articulo (id, id_componente, id_articulo, descripcion, cant_piezas, id_maquina, min_maquina) VALUES (5, 5, 14, 'Tabla Principal', 1, 0, 20);

-- medidas pieza
INSERT INTO medidas_pieza (id_tipo_medida, id_pieza, valor) VALUES (2, 4, 250);
INSERT INTO medidas_pieza (id_tipo_medida, id_pieza, valor) VALUES (1, 4, 250);
INSERT INTO medidas_pieza (id_tipo_medida, id_pieza, valor) VALUES (1, 5, 1200);
INSERT INTO medidas_pieza (id_tipo_medida, id_pieza, valor) VALUES (2, 5, 900);

-- precios articulos
INSERT INTO precios_articulo (id_articulo, fecha, costo, precio_mayorista, precio_minorista) VALUES (14, 1700685846, 74212.65772478888, 81633.92349726777, 92765.8221559861);

--precios articulos y componentes
INSERT INTO precios_articulo_Y_componentes (id_articulo, fecha, id_precio_componente) VALUES (14, 1700685846, 1);

-- precio min hombre
INSERT INTO precios_min_hombre (id, fecha_alta, costo_min) VALUES (1, 1699966346, 500);

-- precio min maquina
INSERT INTO precios_min_maquina (id, fecha_alta, costo_min) VALUES (1, 1699966346, 200);

COMMIT;