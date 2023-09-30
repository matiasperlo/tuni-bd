PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

-- proveedores
INSERT INTO proveedores VALUES(1,'LUMADI');
INSERT INTO proveedores VALUES(2,'MONACHESSI');
INSERT INTO proveedores VALUES(3,'MAD MISIONERA POSSE');

-- texturas
INSERT INTO texturas VALUES(1,'MDF CRUDO',NULL);
INSERT INTO texturas VALUES(2,'MELAMINA BLANCO',NULL);
INSERT INTO texturas VALUES(3,'MELAMINA NEGRO',NULL);
INSERT INTO texturas VALUES(4,'MELAMINA EVEREST',NULL);
INSERT INTO texturas VALUES(5,'MELAMINA HELSINSKI',NULL);
INSERT INTO texturas VALUES(6,'MELAMINA OLMO FINLANDES',NULL);
INSERT INTO texturas VALUES(7,'MELAMINA TERRARUM',NULL);

-- tipos_medida
INSERT INTO tipos_medida VALUES(1,'Largo');
INSERT INTO tipos_medida VALUES(2,'Ancho');
INSERT INTO tipos_medida VALUES(3,'Espesor');

-- componentes
INSERT INTO componentes VALUES(1,'MDF CRUDO 15mm','');
INSERT INTO componentes VALUES(2,'MDF PINTADO 15mm ',NULL);
INSERT INTO componentes VALUES(3,'MDF MELAMINA TEXTURIZADO 18mm',NULL);
INSERT INTO componentes VALUES(4,'CHAPA 1,25 mm',NULL);
INSERT INTO componentes VALUES(5,'MDF MELAMINA BLANCA 15mm',NULL);
INSERT INTO componentes VALUES(6,'Regaton','soporte de patas para los paneles');

-- medidas_componentes
INSERT INTO medidas_componentes VALUES(3,1,15.0);
INSERT INTO medidas_componentes VALUES(1,1,1830.0);
INSERT INTO medidas_componentes VALUES(2,1,2750.0);
INSERT INTO medidas_componentes VALUES(3,2,15.0);
INSERT INTO medidas_componentes VALUES(1,2,1830.0);
INSERT INTO medidas_componentes VALUES(2,2,2750.0);
INSERT INTO medidas_componentes VALUES(3,3,15.0);
INSERT INTO medidas_componentes VALUES(1,3,1830.0);
INSERT INTO medidas_componentes VALUES(2,3,2750.0);

COMMIT;
