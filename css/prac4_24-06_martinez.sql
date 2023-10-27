CREATE DATABASE ReservaNatural;

CREATE TABLE institucion(
id_institucion INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (25) NOT NULL,
telefono VARCHAR(25),
direccion VARCHAR (40) NOT NULL,
logo VARCHAR(20) NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_institucion)

)ENGINE=INNODB;

CREATE TABLE reserva_natural(
id_reserva_natural INT AUTO_INCREMENT NOT NULL,
id_institucion INT NOT NULL,
nombre VARCHAR (25) NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_reserva_natural),
FOREIGN KEY (id_institucion) REFERENCES institucion (id_institucion)
)ENGINE=INNODB;

CREATE TABLE visitas_reserva(
id_visita_reserva INT AUTO_INCREMENT NOT NULL,
id_reserva_natural INT NOT NULL,
fecha_visita DATE NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_visita_reserva),
FOREIGN KEY (id_reserva_natural) REFERENCES reserva_natural (id_reserva_natural)

)ENGINE=INNODB; 

CREATE TABLE personas_(
id_persona_ INT AUTO_INCREMENT NOT NULL,
id_reserva_natural INT NOT NULL,	
nombre VARCHAR (25) NOT NULL,
apellido VARCHAR (15),
telefono VARCHAR (15),
ci VARCHAR (15) NOT NULL,
genero CHAR (1),
fecha_nac DATE NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_persona_),
FOREIGN KEY (id_reserva_natural) REFERENCES reserva_natural (id_reserva_natural)

)ENGINE=INNODB;

CREATE TABLE denuncias_incendios(
id_denuncia_incendio INT AUTO_INCREMENT NOT NULL,
id_persona_ INT  NOT NULL,	
fecha DATE NOT NULL,
descripcion VARCHAR (25) NOT NULL,
hora TIME NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_denuncia_incendio),
FOREIGN KEY (id_persona_) REFERENCES personas_ (id_persona_)

)ENGINE=INNODB;

CREATE TABLE guarda_parques(
id_guarda_parque INT AUTO_INCREMENT NOT NULL,
id_institucion INT  NOT NULL,		
nombre VARCHAR (25) NOT NULL,
apellido VARCHAR (15),
ci VARCHAR (15) NOT NULL,
telefono VARCHAR (15),
genero CHAR (1),
fecha_inicio DATE NOT NULL,
fecha_fin DATE,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_guarda_parque),
FOREIGN KEY (id_institucion) REFERENCES institucion (id_institucion)

)ENGINE=INNODB;

CREATE TABLE alertar_incendio(
id_alerta_incendio INT AUTO_INCREMENT NOT NULL,
id_guarda_parque INT  NOT NULL,
fecha DATE NOT NULL,
ubicacion VARCHAR(30),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_alerta_incendio),
FOREIGN KEY (id_guarda_parque) REFERENCES guarda_parques (id_guarda_parque)

)ENGINE=INNODB;

CREATE TABLE servicios_bomberos(
id_servicio_bombero INT AUTO_INCREMENT NOT NULL,
id_alerta_incendio INT  NOT NULL,	
nombre VARCHAR (25) NOT NULL,
telefono VARCHAR (15),
direccion VARCHAR (40),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_servicio_bombero),
FOREIGN KEY (id_alerta_incendio) REFERENCES alertar_incendio (id_alerta_incendio)

)ENGINE=INNODB;

CREATE TABLE revisiones(
id_revision INT AUTO_INCREMENT NOT NULL,
id_guarda_parque INT  NOT NULL,	
id_reserva_natural INT  NOT NULL,		
fecha DATE NOT NULL,
hora_inicio TIME NOT NULL,
hora_fin TIME NOT NULL,	
descripcion VARCHAR (35) NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_revision),
FOREIGN KEY (id_guarda_parque) REFERENCES guarda_parques (id_guarda_parque),
FOREIGN KEY (id_reserva_natural) REFERENCES reserva_natural (id_reserva_natural)

)ENGINE=INNODB;

CREATE TABLE administradores(
id_administrador INT AUTO_INCREMENT NOT NULL,
id_institucion INT  NOT NULL,	
nombres VARCHAR (25) NOT NULL,
ap VARCHAR (15),
am VARCHAR (15),
fecha_inicio DATE NOT NULL,
fecha_fin DATE,
ci VARCHAR (15) NOT NULL,
telefono VARCHAR (15),
genero CHAR (1),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_administrador),
FOREIGN KEY (id_institucion) REFERENCES institucion (id_institucion)

)ENGINE=INNODB;

CREATE TABLE ing_ambientales(
id_ing_ambiental INT AUTO_INCREMENT NOT NULL,
id_institucion INT NOT NULL,	
nombres VARCHAR (25) NOT NULL,
ap VARCHAR (15),
am VARCHAR (15),
telefono VARCHAR (15),
fecha_inicio DATE NOT NULL,
fecha_fin DATE,
genero CHAR(1),
matricula VARCHAR (25),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_ing_ambiental),
FOREIGN KEY (id_institucion) REFERENCES institucion (id_institucion)

)ENGINE=INNODB;

CREATE TABLE monitoreos(
id_monitoreo INT AUTO_INCREMENT NOT NULL,
id_ing_ambiental INT  NOT NULL,	
id_reserva_natural INT  NOT NULL,		
hora_inicio TIME NOT NULL,
hora_fin TIME NOT NULL,	
fecha DATE NOT NULL,
descripcion VARCHAR (40),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_monitoreo),
FOREIGN KEY (id_ing_ambiental) REFERENCES ing_ambientales (id_ing_ambiental),
FOREIGN KEY (id_reserva_natural) REFERENCES reserva_natural (id_reserva_natural)

)ENGINE=INNODB;

CREATE TABLE director_guarda_parques(
id_director_guarda_parque INT AUTO_INCREMENT NOT NULL,
id_guarda_parque INT NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_fin DATE,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_director_guarda_parque),
FOREIGN KEY (id_guarda_parque) REFERENCES guarda_parques (id_guarda_parque)

)ENGINE=INNODB;



CREATE TABLE productos(
  id_producto INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(60) NOT NULL,
  modelo VARCHAR(10) NOT NULL,
  marca VARCHAR(10) NOT NULL,
  industria_origen VARCHAR(15),
  PRIMARY KEY(id_producto)
)ENGINE=INNODB;

CREATE TABLE productos_precios(
  id_producto_precio INT NOT NULL AUTO_INCREMENT,
  id_producto INT NOT NULL,
  fecha_prec_compra DATE NOT NULL,
  precio_compra FLOAT NOT NULL,
  precio_venta FLOAT NOT NULL,
  fecha_prec_venta DATE NOT NULL,
  PRIMARY KEY(id_producto_precio),
  FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
)ENGINE=INNODB;




CREATE TABLE personas(
id_persona INT NOT NULL AUTO_INCREMENT,	
id_institucion INT NOT NULL,
nombres VARCHAR (25) NOT NULL,
ap VARCHAR (15),
am VARCHAR (15),
telefono VARCHAR (15),
ci VARCHAR (15) NOT NULL,
direccion VARCHAR (40),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_persona),
FOREIGN KEY (id_institucion) REFERENCES institucion (id_institucion)

)ENGINE=INNODB;

CREATE TABLE usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
id_persona INT NOT NULL,
usuario VARCHAR(15) NOT NULL,
clave VARCHAR (100) NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_usuario),
FOREIGN KEY (id_persona) REFERENCES personas (id_persona)

)ENGINE=INNODB;

CREATE TABLE roles(
id_rol INT NOT NULL AUTO_INCREMENT,
rol VARCHAR (20) NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_rol)

)ENGINE=INNODB;

CREATE TABLE usuarios_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT,
id_rol INT NOT NULL,
id_usuario INT NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_usuario_rol),
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
FOREIGN KEY (id_rol) REFERENCES roles (id_rol)

)ENGINE=INNODB;

CREATE TABLE grupos(
id_grupo INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR (50),
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_grupo)

)ENGINE=INNODB;

CREATE TABLE opciones(
id_opcion INT NOT NULL AUTO_INCREMENT,
id_grupo INT  NOT NULL,
opcion VARCHAR (30) NOT NULL,
contenido VARCHAR (65) NOT NULL,
orden INT  NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_opcion),
FOREIGN KEY (id_grupo) REFERENCES grupos (id_grupo)

)ENGINE=INNODB;

CREATE TABLE accesos(
id_acceso INT NOT NULL AUTO_INCREMENT,
id_opcion INT NOT NULL,
id_rol INT NOT NULL,
_fec_insercion TIMESTAMP NOT NULL,
_fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
_estado CHAR (1) NOT NULL,
_usuario INT NOT NULL,
PRIMARY KEY (id_acceso),
FOREIGN KEY (id_rol) REFERENCES roles (id_rol),
FOREIGN KEY (id_opcion) REFERENCES opciones (id_opcion)

)ENGINE=INNODB;

INSERT INTO institucion VALUES (1,'sernap','+591_456738bo','Tarija','logo.jpg',now(),now(),'A',1);

INSERT INTO reserva_natural VALUES (1,1,'Reserva(Sama)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (2,1,'Reserva(Tariquia)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (3,1,'Reserva(Cordilleras)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (4,1,'Reserva(LosAndes)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (5,1,'Reserva(San nicolas)' ,now(),now(),'A',1);    
INSERT INTO reserva_natural VALUES (6,1,'Reserva(Madidi)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (7,1,'Reserva(Amboro)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (8,1,'Reserva(Toro Toro)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (9,1,'Reserva(Tunari)',now(),now(),'A',1); 
INSERT INTO reserva_natural VALUES (10,1,'Reserva(El Palmar)',now(),now(),'A',1); 

INSERT INTO visitas_reserva VALUES (1,1,'2020-01-01',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (2,1,'2020-01-02',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (3,1,'2020-01-03',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (4,1,'2020-01-04',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (5,1,'2020-01-05',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (6,1,'2020-01-06',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (7,1,'2020-01-07',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (8,1,'2020-01-08',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (9,1,'2020-01-09',now(),now(),'A',1);
INSERT INTO visitas_reserva VALUES (10,1,'2020-01-15',now(),now(),'A',1);

INSERT INTO personas_ VALUES (1,1,'Fernanda','Sanchez','591_67540639bo','8976540a','F','2001-07-09',now(),now(),'A',1);
INSERT INTO personas_ VALUES (2,1,'Foreth','Diaz','591_67540639bo','8976540a','M','2001-12-24',now(),now(),'A',1);
INSERT INTO personas_ VALUES (3,1,'Kaydem','Torres','591_67540639bo','8976540a','M','2001-11-09',now(),now(),'A',1);
INSERT INTO personas_ VALUES (4,1,'Valeria','Duran','591_67540639bo','8976540a','F','2002-07-13',now(),now(),'A',1);
INSERT INTO personas_ VALUES (5,1,'Paolo','Arancibia','591_67540639bo','8976540a','M','2000-05-02',now(),now(),'A',1);
INSERT INTO personas_ VALUES (6,1,'Marcos','Medrano','591_67540639bo','8976540a','M','1999-04-05',now(),now(),'A',1);
INSERT INTO personas_ VALUES (7,1,'Kenia','Garay','591_67540639bo','8976540a','F','2001-06-16',now(),now(),'A',1);
INSERT INTO personas_ VALUES (8,1,'Sebastian','Mamani','591_67540639bo','8976540a','M','1998-08-07',now(),now(),'A',1);
INSERT INTO personas_ VALUES (9,1,'Pablo','Contreras','591_67540639bo','8976540a','M','2000-04-08',now(),now(),'A',1);
INSERT INTO personas_ VALUES (10,1,'Marcos','Estrada','591_67540639bo','8976540a','M','2001-09-23',now(),now(),'A',1);

INSERT INTO denuncias_incendios VALUES (1,1,'2017-06-01','Incendio1','9:00.00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (2,2,'2017-06-02','Incendio2','9:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (3,3,'2017-06-03','Incendio3','10:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (4,4,'2017-06-04','Incendio4 ','11:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (5,5,'2017-06-05','Incendio5 ','12:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (6,6,'2017-06-06','Incendio6 ','1:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (7,7,'2017-06-07','Incendio7 ','2:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (8,8,'2017-06-08','Incendio8 ','3:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (9,9,'2017-06-09','Incendio9 ','4:00:00',now(),now(),'A',1);
INSERT INTO denuncias_incendios VALUES (10,10,'2017-06-10','Incendio10','5:00:00',now(),now(),'A',1);

INSERT INTO guarda_parques VALUES (1,1,'Carlos','Sanchez','456789b','+591_67832b','M','2020-01-01','2021-03-01',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (2,1,'Marcos','Del Rio','123456c','+591_67832','M','2020-01-02','2021-03-01',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (3,1,'Santiago','Del Campos','678945','+591_67832','M','2020-03-01','2021-03-01',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (4,1,'Lorena','Alavares','567845h','+591_67832','F','2020-01-04','2021-03-01',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (5,1,'Adrian','Patiño','656589','+591_678320','M','2020-01-05','2021-03-08',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (6,1,'Pedro','Garnica','456789b','+591_670832','M','2020-01-09','2021-03-09',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (7,1,'Pablo','Arroyo','456789b','+591_6783200','M','2020-01-010','2021-03-011',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (8,1,'Sebastian','Garcia','456089b','+591_6780132','M','2020-01-012','2021-03-013',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (9,1,'Juan','Rodrigues','456780b','+591_6783202','M','2020-01-014','2021-03-014',now(),now(),'A',1);
INSERT INTO guarda_parques VALUES (10,1,'Tatiana','Gonzales','406789b','+591_6783022','F','2020-01-015','2021-03-015',now(),now(),'A',1);

INSERT INTO alertar_incendio VALUES (1,1,'2016-01-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (2,2,'2016-02-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (3,3,'2016-03-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (4,4,'2016-04-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (5,5,'2016-05-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (6,6,'2016-06-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (7,7,'2016-07-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (8,8,'2016-08-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (9,9,'2016-09-01','Sama(Tarija)',now(),now(),'A',1);
INSERT INTO alertar_incendio VALUES (10,10,'2016-10-01','Sama(Tarija)',now(),now(),'A',1);

INSERT INTO servicios_bomberos VALUES (1,1,'Brasschaat','+591_5101bo','Tarija',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (2,2,'Brasschaat','+591_101bo','Villamontes',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (3,3,'Brasschaat','+591_101bo','Yacuiba',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (4,4,'Brasschaat','+591_101bo','Santa Cruz',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (5,5,'Brasschaat','+591_5101bo','Beni',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (6,6,'Brasschaat','+591_10189bo','San Lorenzo',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (7,7,'Brasschaat','+591_10167bo','Puente',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (8,8,'Brasschaat','+591_10145bo','Entre Rios',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (9,9,'Brasschaat','+591_10231bo','Tarija Av Circunvalacio',now(),now(),'A',1);
INSERT INTO servicios_bomberos VALUES (10,10,'Brasschaat','+591_10091bo','Tarija Av La Paz',now(),now(),'A',1);

INSERT INTO revisiones VALUES (1,1,1,'2018-01-01','8:00:00','12:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (2,2,1,'2018-02-02','8:00:00','13:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (3,3,1,'2018-01-03','8:00:00','14:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (4,4,1,'2018-01-04','8:00:00','16:00:00', '',now(),now(),'A',1);
INSERT INTO revisiones VALUES (5,5,1,'2018-01-05','8:00:00','15:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (6,6,1,'2018-01-06','8:00:00','17:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (7,7,1,'2018-01-07','8:00:00','14:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (8,8,1,'2018-01-08','8:00:00','11:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (9,9,1,'2018-01-09','8:00:00','17:00:00',' ',now(),now(),'A',1);
INSERT INTO revisiones VALUES (10,10,1,'2018-01-1','8:00:00','15:00:00',' ',now(),now(),'A',1);

INSERT INTO administradores VALUES (1,1,'Armando','Garay','Arroyo','2020-01-07','2021-02-01','12625419a','+591_67321062','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (2,1,'Sebastian','Peres','Dias','2020-01-08','2021-02-02','10625019b','+591_67320262','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (3,1,'Carlos','Alamasan','Apasa','2020-01-09','2021-02-013','10625019c','+591_67320062','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (4,1,'Tito','Ordoñes','Flores','2020-01-10','2021-02-04','12025419d','+591_567320022','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (5,1,'Andrea','Rios','Garay','2020-01-11','2021-02-05','12625019e','+591_67020062','F',now(),now(),'A',1);
INSERT INTO administradores VALUES (6,1,'Santiago','Peres','Mamani','2020-01-12','2021-02-06','10625419f','+591_68320062','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (7,1,'Alfredo','Torres','Reyes','2020-01-13','2021-02-07','12025419h','+591 _67390062','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (8,1,'Romina','Reyes','Peña','2020-01-14','2021-02-08','12025419i','+591_67320022','F',now(),now(),'A',1);
INSERT INTO administradores VALUES (9,1,'Anthony','Torrejon','','2020-01-15','2021-02-09','12605419j','+591_67320012','M',now(),now(),'A',1);
INSERT INTO administradores VALUES (10,1,'Silvio','Gareca','Medrano','2020-01-16','2021-02-10','12625409k','+591_77320062','M',now(),now(),'A',1);

INSERT INTO ing_ambientales VALUES (1,1,'Marcos','DeL Rio','Garcia','591_698006540bo','2019-01-01','2019-02-02','M','asdf1200',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (2,1,'Pedro','Campos','Rios','591_569876043bo','2019-01-02','2019-02-03','M','a8sdf12',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (3,1,'Mirco','Dias','Velasque','591_60000543b','2019-01-03','2019-02-04','M','asdjf1002',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (4,1,'Alex','Estrada','Bautista','591_608700541b','2019-01-04','2019-02-05','M','a00sdf12',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (5,1,'Fernanda','Sanchez','Mendieta','591_8700541b','2019-08-04','2019-03-05','F','a001sdf12',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (6,1,'Foreth','Martinez','Saldaña','591_69800650bo','2018-01-01','2019-03-02','M','sdf1200',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (7,1,'Kevin','Altamirando','Rojas','591_59876043bo','2018-02-02','2019-03-03','M','a8df12',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (8,1,'Rodrigo','Farfan','Cardozo','591_0000543b','2018-03-03','2019-04-05','M','asdjf002',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (9,1,'Sonia','Estrada','Bautista','591_60870541b','2018-04-12','2019-04-06','F','a00sdf1',now(),now(),'A',1);
INSERT INTO ing_ambientales VALUES (10,1,'Leonardo','Garnica','Guzman','591_700541','2018-08-04','2019-04-07','M','a01sd12',now(),now(),'A',1);

INSERT INTO monitoreos VALUES (1,1,1,'8:00:00','12:00:00','2020-01-03','Monitoreos_Realizados',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (2,2,1,'8:00:00','16:00:00','2020-01-04','Monitoreos_Realizados_durantante_semana',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (3,3,1,'8:00:00','15:00:00','2020-01-05','Monitoreos',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (4,4,1,'8:00:00','16:00:00','2020-01-06','Monitoreos_Completos',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (5,1,1,'8:00:00','10:00:00','2020-01-07','Monitoreos_Hechos',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (6,2,1,'8:00:00','12:00:00','2020-01-08','Monitoreos_en_realizar',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (7,3,1,'8:00:00','16:00:00','2020-01-09','Monitoreos_Faltantes',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (8,4,1,'8:00:00','14:00:00','2020-01-10','Monitoreos_irregulares',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (9,1,1,'8:00:00','13:00:00','2020-01-11','Monitoreos_que se deben hacer',now(),now(),'A',1);
INSERT INTO monitoreos VALUES (10,2,1,'8:00:00','15:00:00','2020-01-12','Monitoreos para realizar',now(),now(),'A',1);

INSERT INTO director_guarda_parques VALUES (1,1,'2010-01-01','2020-02-01',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (2,2,'2010-01-02','2020-02-02',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (3,3,'2010-01-03','2020-02-03',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (4,4,'2010-01-04','2020-02-04',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (5,5,'2010-01-05','2020-02-05',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (6,6,'2010-01-06','2020-02-06',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (7,7,'2010-01-07','2020-02-07',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (8,8,'2010-01-08','2020-02-08',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (9,9,'2010-01-09','2020-02-09',now(),now(),'A',1);
INSERT INTO director_guarda_parques VALUES (10,10,'2010-01-10','2020-02-19',now(),now(),'A',1);





INSERT INTO productos VALUES(1, 'Alicate de corte para electrónica de 5"','TR-17314','TRUPER','MEXICO');
INSERT INTO productos VALUES(2, 'Cable de proteccion c/gancho de stop para liniero','TR-16023','TRUPER','MEXICO');
INSERT INTO productos VALUES(3, 'Compás interno 6"','730-1','GEDORE','BRASIL');
INSERT INTO productos VALUES(4, 'Compresimetro para medir precion de aceite en motores','912G1','FORCE','TAIWAN');
INSERT INTO productos VALUES(5, 'Escalera extensible fibra vidrio 136Kg. 9,75Mts. 32peldaños','DXL3020-32','DEWALT','MEXICO');
INSERT INTO productos VALUES(6, 'Escalera extensible fibra vidrio 113Kg. 7,62Mts. 28peldaños','D5028-MX','WERNER','MEXICO');
INSERT INTO productos VALUES(7, 'Guantes de soldador reforzado en palma y muñeca azul','GSA11470','RINO','BRASIL');
INSERT INTO productos VALUES(8, 'Hidrometro para bateria de 6,12 y 24 V. ','79-046','STANLEY','BRASIL');
INSERT INTO productos VALUES(9, 'Porta Macho nº 6  (1/4" - 3/4")','M6-M20','SCK','JAPON');
INSERT INTO productos VALUES(10, 'Prensa gatillo  24" para madera','524QCN','IRWIN','BRASIL');




INSERT INTO productos_precios VALUES(1, 4,'2020-01-10',1029.9,965,'2020-02-19');
INSERT INTO productos_precios VALUES(2, 7,'2020-01-10',34.7,32.5,'2020-07-21');
INSERT INTO productos_precios VALUES(3, 8,'2020-01-27',62.6,71.2,'2020-07-21');
INSERT INTO productos_precios VALUES(4, 9,'2020-02-03',92.2,121,'2020-07-21');
INSERT INTO productos_precios VALUES(5, 1,'2020-02-07',28.5,29,'2020-07-21');
INSERT INTO productos_precios VALUES(6, 2,'2020-02-07',427.3,429,'2020-07-21');
INSERT INTO productos_precios VALUES(7, 3,'2020-08-11',118.3,126.6,'2020-07-21');
INSERT INTO productos_precios VALUES(8, 10,'2020-08-11',208.8,223.6,'2020-07-21');
INSERT INTO productos_precios VALUES(9, 5,'2020-08-20',2371.7,3175,'2020-07-21');
INSERT INTO productos_precios VALUES(10, 6,'2020-08-20',2186.3,2936.8,'2020-07-21');

INSERT INTO personas VALUES (1,1,'Foreth','Martinez','Saldaña','+591_6754039bo','8976540a','Bario_Menbrillo',now(),now(),'A',1);
INSERT INTO personas VALUES (2,1,'Yanina','Vargas','Guzman','+591_7400639bo','8976540a','Mercado la loma',now(),now(),'A',1);
INSERT INTO personas VALUES (3,1,'Anthony','Torrico','Gozales','+591_6043639bo','8906540a','Av la Paz',now(),now(),'A',1);
INSERT INTO personas VALUES (4,1,'Kaydem','Duran','Herrera','+591_604363bo','8970540a','Parque Bolivar',now(),now(),'A',1);
INSERT INTO personas VALUES (5,1,'Fernanda','Sanchez','Mendieta','+591_6700639bo','8076540a','Bario Quiroga',now(),now(),'A',1);
INSERT INTO personas VALUES (6,1,'Valeria','Sandoval','Guzman','+591_9743639bo','8976500a','Bario_Aranjuez',now(),now(),'A',1);
INSERT INTO personas VALUES (7,1,'Michell','Meza','Tejerina','+591_6750639bo','8976510a','Av Gran Chaco',now(),now(),'A',1);
INSERT INTO personas VALUES (8,1,'Jenesis','Nañes','Cardozo','+591_653000bo','8976520a','Av Circunvalacion',now(),now(),'A',1);
INSERT INTO personas VALUES (9,1,'Bridman','Barca','Cardenas','+591_675409bo','8976530a','Av Gamoneda',now(),now(),'A',1);
INSERT INTO personas VALUES (10,1,'Marcos','Ramirez','Vilte','+591_6754361bo','8976590a','Maercado Central',now(),now(),'A',1);

INSERT INTO usuarios VALUES (1,1,'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),'A',1);

INSERT INTO roles VALUES (1,'administrador',now(),now(),'A',1);

INSERT INTO usuarios_roles VALUES (1,1,1,now(),now(),'A',1);

INSERT INTO grupos VALUES (1,'Herramientas',now(),now(),'A',1); 
INSERT INTO grupos VALUES (2,'Parametros',now(),now(),'A',1); 
INSERT INTO grupos VALUES (3,'Reserva_natural',now(),now(),'A',1); 
INSERT INTO grupos VALUES (4,'Reporte',now(),now(),'A',1); 
INSERT INTO grupos VALUES (5,'EVA PRIMER BIMESTRE-DWII',now(),now(),'A',1); 

INSERT INTO opciones VALUES (1,1,'personas','../privada/personas/personas.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (2,1,'usuarios','../privada/usuarios/usuarios.php',20,now(),now(),'A',1);
INSERT INTO opciones VALUES (3,1,'grupos','../privada/grupos/grupos.php',30,now(),now(),'A',1);
INSERT INTO opciones VALUES (4,1,'roles','../privada/roles/roles.php',40,now(),now(),'A',1);
INSERT INTO opciones VALUES (5,1,'usuarios_roles','../privada/usuarios_roles/usuarios_roles.php',50,now(),now(),'A',1);
INSERT INTO opciones VALUES (6,1,'opciones','../privada/opciones/opciones.php',60,now(),now(),'A',1);
INSERT INTO opciones VALUES (7,1,'accesos','../privada/accesos/accesos.php',70,now(),now(),'A',1);
INSERT INTO opciones VALUES (8,2,'institucion','../privada/institucion/institucion.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (9,2,'reserva_natural','../privada/reserva_natural/reserva_natural.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (10,3,'visitas_reservas','../privada/visitas_reservas/visitas_reservas.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (11,2,'personas_','../privada/personas_/personas_.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (12,2,'denuncias_Incendios','../privada/denuncias_incendios/denuncias_Incendios.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (13,2,'guarda_parques','../privada/guarda_parques/guarda_parques.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (14,3,'alertar_incendio','../privada/alerta_incendio/alertar_incendio.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (15,3,'servicios_bomberos','../privada/servicios_bomberos/servicios_bomberos.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (16,3,'revisiones','../privada/revisiones/revisiones.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (17,3,'administradores','../privada/administradores/administradores.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (18,2,'ing_ambientales','../privada/ing_ambientales/ing_ambientales.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (19,3,'monitoreos','../privada/monitoreos/monitoreos.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (20,2,'director_guarda_parques','../privada/director_guarda_parques/director_guarda_parques.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (21,4,'Rpt_Persona_con_Usuario','../privada/reporte/rpt_personas1.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (22,4,'Rpt_Persona_con_fechas','../privada/reportes/rpt_personas2.php',20,now(),now(),'A',1);

INSERT INTO opciones VALUES (23,5,'PRODUCTOS','../privada/productos/productos.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (24,5,'REPORTES PRODUCTOS PRECIOS','../privada/reportes/rpt_productos_precios.php',20,now(),now(),'A',1);

INSERT INTO opciones VALUES (25,5,'PRODUCTOS PRECIOS','../privada/productos_precios/productos_precios.php',10,now(),now(),'A',1);
INSERT INTO opciones VALUES (26,5,'REPORTES PRODUCTOS','../privada/reportes/rpt_productos_fechas.php',20,now(),now(),'A',1);

INSERT INTO accesos VALUES (1,1,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (2,2,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (3,3,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (4,4,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (5,5,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (6,6,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (7,7,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (8,8,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (9,9,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (10,10,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (11,11,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (12,12,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (13,13,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (14,14,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (15,15,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (16,16,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (17,17,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (18,18,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (19,19,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (20,20,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (21,21,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (22,22,1,now(),now(),'A',1);

INSERT INTO accesos VALUES (23,23,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (24,24,1,now(),now(),'A',1);

INSERT INTO accesos VALUES (25,25,1,now(),now(),'A',1);
INSERT INTO accesos VALUES (26,26,1,now(),now(),'A',1);





























