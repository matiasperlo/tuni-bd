BEGIN TRANSACTION;

-- proveedores
INSERT INTO proveedores VALUES(1,'LUMADI');
INSERT INTO proveedores VALUES(2,'MONACHESSI');
INSERT INTO proveedores VALUES(3,'MAD MISIONERA POSSE');

-- tipos medida
INSERT INTO tipos_medida VALUES(1,'Largo');
INSERT INTO tipos_medida VALUES(2,'Ancho');
INSERT INTO tipos_medida VALUES(3,'Espesor');

-- disenios 
INSERT INTO disenios VALUES(1,'PALM',NULL);
INSERT INTO disenios VALUES(2,'GRID',NULL);
INSERT INTO disenios VALUES(3,'HERBA',NULL);
INSERT INTO disenios VALUES(4,'HILA',NULL);
INSERT INTO disenios VALUES(5,'BLOK',NULL);
INSERT INTO disenios VALUES(6,'ARABETTO',NULL);
INSERT INTO disenios VALUES(7,'PETRA',NULL);
INSERT INTO disenios VALUES(8,'NETT',NULL);

-- texturas
INSERT INTO texturas VALUES(1,'MDF CRUDO','No contiene una textura.');
INSERT INTO texturas VALUES(2,'MELAMINA BLANCO',NULL);
INSERT INTO texturas VALUES(3,'MELAMINA NEGRO',NULL);
INSERT INTO texturas VALUES(4,'MELAMINA EVEREST',NULL);
INSERT INTO texturas VALUES(5,'MELAMINA HELSINSKI',NULL);
INSERT INTO texturas VALUES(6,'MELAMINA OLMO FINLANDES',NULL);
INSERT INTO texturas VALUES(7,'MELAMINA TERRARUM',NULL);

-- componentes
INSERT INTO componentes VALUES(1,'MDF CRUDO 15mm','',NULL);
INSERT INTO componentes VALUES(2,'MDF PINTADO 15mm ',NULL,NULL);
INSERT INTO componentes VALUES(3,'MDF MELAMINA TEXTURIZADO 18mm',NULL,NULL);
INSERT INTO componentes VALUES(4,'CHAPA 1,25 mm',NULL,NULL);
INSERT INTO componentes VALUES(5,'MDF MELAMINA BLANCA 15mm',NULL,NULL);
INSERT INTO componentes VALUES(6,'Regaton','soporte de patas para los paneles',NULL);

-- medidas componente
INSERT INTO medidas_componente VALUES(3,1,15.0);
INSERT INTO medidas_componente VALUES(1,1,1830.0);
INSERT INTO medidas_componente VALUES(2,1,2750.0);
INSERT INTO medidas_componente VALUES(3,2,15.0);
INSERT INTO medidas_componente VALUES(1,2,1830.0);
INSERT INTO medidas_componente VALUES(2,2,2750.0);
INSERT INTO medidas_componente VALUES(3,3,15.0);
INSERT INTO medidas_componente VALUES(1,3,1830.0);
INSERT INTO medidas_componente VALUES(2,3,2750.0);

-- precios componente
INSERT INTO precios_componente VALUES(1,1,1,15940.0,1680369453);
INSERT INTO precios_componente VALUES(2,2,1,23610.0,1680369453);
INSERT INTO precios_componente VALUES(3,5,1,21270.0,1680369453);
INSERT INTO precios_componente VALUES(4,3,1,28900.0,1680369453);

-- articulos
INSERT INTO articulos VALUES(1,'Divisorio vertical para vidriera','Un divisorio vertical perfecto para vidrieras de negocios de ropa y calzado.',1695651453,NULL,120,60,'foto1.png');
INSERT INTO articulos VALUES(2,'Divisorio estante multifuncion','Un divisorio vertical que cuenta con un estante bajo ideal para reposar plantas y decoraciones de interior.',1695653626,NULL,100,80,'foto2.png');
INSERT INTO articulos VALUES(3,'Respaldo para sommier','Un respaldo con diseño realizado sobre placa que proporciona un gran estilo a camas de doble plaza.',1695653626,NULL,120,120,'foto3.png');
INSERT INTO articulos VALUES(4,'Biombo Movil','Un biombo separador de ambientes con muchos diseños disponibles.',1695653626,NULL,60,100,'foto4.png');
INSERT INTO articulos VALUES(5,'Mesa ratonera texturizada','Un mesita para espacios de living que cuenta con muchos diseños disponibles.',1695653626,NULL,60,40,'foto5.png');

-- disenios articulo
INSERT INTO disenios_articulo VALUES(1,7,'https://instagram.fcor10-3.fna.fbcdn.net/v/t51.2885-15/327422411_141618328764072_2443494420044673126_n.jpg?stp=dst-jpg_e15&_nc_ht=instagram.fcor10-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=5Slgjo027iUAX-N77Qj&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAyNjAzMDgxMDg1MTM4MzgyMQ%3D%3D.2-ccb7-5&oh=00_AfCRh6dx3h-y9Ufk7zHI_C5eNPqGHl5P9G3slEAo4jSpXA&oe=65156362&_nc_sid=ee9879');
INSERT INTO disenios_articulo VALUES(2,7,'https://instagram.fcor10-3.fna.fbcdn.net/v/t51.2885-15/327799497_548094144041335_9070489556200562198_n.jpg?stp=dst-jpg_e15&_nc_ht=instagram.fcor10-3.fna.fbcdn.net&_nc_cat=107&_nc_ohc=iN9flLSEKj4AX8KkNPb&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAyNjAyODI5NDU3MTI0MjQyMA%3D%3D.2-ccb7-5&oh=00_AfBAYr4ylD2KYyFoXZZ_3CwgPV3znISDV_PZNoFhDIepsw&oe=65153592&_nc_sid=ee9879');
INSERT INTO disenios_articulo VALUES(3,2,'https://instagram.fcor10-3.fna.fbcdn.net/v/t51.2885-15/233796636_382612806592920_3193175514151201074_n.jpg?stp=dst-jpg_e15&_nc_ht=instagram.fcor10-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=bgPiprH6hrYAX9SigcK&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MjYzNDMxNDM2MTc4OTkxMDY1NA%3D%3D.2-ccb7-5&oh=00_AfCwQCxSxEIZ_VwN8jR-_HYUqYU4b37qKAIRiA7AgH1-Gg&oe=65157B9A&_nc_sid=b41fef');

-- piezas articulo
INSERT INTO piezas_articulo VALUES(1,'4 regatones',4,6,1);
INSERT INTO piezas_articulo VALUES(2,'1 placa con el diseño',1,1,1);
INSERT INTO piezas_articulo VALUES(3,'2 patas de soporte',2,1,1);

-- recortes pieza
INSERT INTO recortes_pieza VALUES(1,2,1830.0);
INSERT INTO recortes_pieza VALUES(2,2,640.0);
INSERT INTO recortes_pieza VALUES(1,3,250.0);
INSERT INTO recortes_pieza VALUES(2,3,250.0);

COMMIT;