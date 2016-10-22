SET QUOTED_IDENTIFIER ON
GO

USE master
GO

CREATE DATABASE "MyWineDB"
GO

USE "MyWineDB"
GO

CREATE TABLE "Vendedor"(
	"Rut" int not null,
	"Dv" nvarchar(1) not null,
	"Nombre" nvarchar(50) not null,
	"ApellidoPaterno" nvarchar(50) not null,
	"ApellidoMaterno" nvarchar(50) not null,
	"Direccion" nvarchar(50) not null,
	"Correo" nvarchar(50) null,
	"Telefono" int not null
)
GO

ALTER TABLE "Vendedor"
	add constraint "Vendedor_PK" primary key ("Rut")   
GO

CREATE TABLE "Vino" ( 
	"Codigo" nvarchar(6) not null,
	"Nombre" nvarchar(100) not null,
	"Color" nvarchar(20) not null,
	"Ano" int not null,
	"Precio" int not null,
	"Existencia" int not null
)
GO

ALTER TABLE "Vino"
	add constraint "Vino_PK" primary key ("Codigo")   
GO

CREATE TABLE "Documento" ( 
	"Codigo" nvarchar(10) not null,
	"Tipo" nvarchar(10) not null,
	"Fecha" date not null,
	"Vendedor" int not null
)
GO

ALTER TABLE "Documento"
	add constraint "Documento_PK" primary key ("Codigo")   
GO

CREATE TABLE "DetalleDocumento" ( 
	"Documento" nvarchar(10) not null,
	"Vino" nvarchar(6) not null,
	"Cantidad" int not null
)
GO

ALTER TABLE "DetalleDocumento"
	add constraint "DetalleDocumento_PK" primary key ("Documento", "Vino")   
GO

ALTER TABLE "Documento"
	add constraint "Documento_Vendedor_FK" foreign key ("Vendedor")
	 references "Vendedor" ("Rut") on update no action on delete no action  
GO

ALTER TABLE "DetalleDocumento"
	add constraint "Detalle_Documento_FK" foreign key ("Documento")
	 references "Documento" ("Codigo") on update no action on delete no action  
GO

ALTER TABLE "DetalleDocumento"
	add constraint "Detalle_Vino_FK" foreign key ("Vino")
	 references "Vino" ("Codigo") on update no action on delete no action  
GO

USE MyWineDB
GO

INSERT INTO Vendedor VALUES (22042308, '5', 'Fernando', 'Chata', 'Llamoca', 'Esmeralda 6786 - La Cisterna', 'fernando@correo.com', 55204936);
INSERT INTO Vendedor VALUES (17414309, '9', 'Gabriela', 'Paredes', 'Zu�iga', 'Catedral 1042 - Santiago', 'gabriela@mail.com', 92333329);
INSERT INTO Vendedor VALUES (16660246, '7', 'Elena', 'Zu�iga', 'Paredes', 'Lago Pirihueico 1607', 'elena@correo.cl', 92465657);
INSERT INTO Vendedor VALUES (13850007, '1', 'Juana', 'Abarca', 'Figueroa', 'Pasaje 21 numero 20 - La Cisterna', 'Juana@gmail.com', 58412292);
INSERT INTO Vendedor VALUES (11910545, '5', 'Jose', 'Soto', 'Pavez', 'Moneda 1503 - Santiago', 'Jose@mail.cl', 90502083);
INSERT INTO Vendedor VALUES (13593105, '5', 'Patricio', 'Gonzales', 'Mu�oz', 'Las parcelas 2050 - Pe�alolen', 'patricio@gmail.com', 62339225);
INSERT INTO Vendedor VALUES (6466439, '5', 'Byron', 'Perez', 'Gonzales', 'Cristobal Colon 1507 - Las Condes', 'perezperez@gmail.com', 57244332);
INSERT INTO Vendedor VALUES (16081701, '1', 'Tomas', 'Larrain', 'Solari', 'Alonso de Cordova 5007 - Vitcura', 'tomaslarrain@mail.com', 93394050);

INSERT INTO Vino VALUES ('V-0001', 'La Moneda Reserva Malbec', 'Tinto', 2015, 4000, 100);
INSERT INTO Vino VALUES ('V-0002', 'Primus The Blend del Valle de Colchagua de la cosecha', 'Tinto', 2012, 12400, 50);
INSERT INTO Vino VALUES ('V-0003', 'Carmenere Terra Noble Gran Reserva', 'Tinto', 2013, 11700, 100);
INSERT INTO Vino VALUES ('V-0004', 'Cabernet Sauvignon Err�zuriz Max Reserva', 'Tinto', 2012, 11700, 150);
INSERT INTO Vino VALUES ('V-0005', 'Sauvignon Blanc Los Vascos de la vi�a Domaines Barons de Rothschild Lafite', 'Blanco', 2012, 7900, 150);
INSERT INTO Vino VALUES ('V-0006', 'Cotes-Du-Rhone Rouge', 'Tinto', 2005, 20000, 5);
INSERT INTO Vino VALUES ('V-0007', 'laurent perrier Ultra Brut', 'Blanco', 2015, 20000, 10);
INSERT INTO Vino VALUES ('V-0008', 'chateau Latour', 'Tinto', 2009, 30000, 10);
INSERT INTO Vino VALUES ('V-0009', 'Picpoul de Pinet', 'Blanco', 2007, 45000, 10);
INSERT INTO Vino VALUES ('V-0010', 'Cune Roja Imperial', 'Tinto', 2010, 124000, 10);

INSERT INTO Documento VALUES ('100-0001-A', 'Boleta', '9/12/2016', 22042308);
INSERT INTO Documento VALUES ('100-0002-A', 'Boleta', '9/9/2016', 22042308);
INSERT INTO Documento VALUES ('100-0003-A', 'Boleta', '9/9/2016', 17414309);
INSERT INTO Documento VALUES ('100-0004-A', 'Boleta', '8/9/2016', 6466439);
INSERT INTO Documento VALUES ('100-0005-A', 'Boleta', '8/9/2016', 6466439);
INSERT INTO Documento VALUES ('100-0006-A', 'Boleta', '8/9/2016', 6466439);
INSERT INTO Documento VALUES ('100-0007-A', 'Boleta', '7/9/2016', 11910545);
INSERT INTO Documento VALUES ('100-0008-A', 'Boleta', '7/9/2016', 16081701);
INSERT INTO Documento VALUES ('100-0009-A', 'Boleta', '6/9/2016', 16081701);
INSERT INTO Documento VALUES ('100-0010-A', 'Boleta', '6/9/2016', 16081701);
INSERT INTO Documento VALUES ('100-0011-A', 'Boleta', '5/9/2016', 13593105);
INSERT INTO Documento VALUES ('100-0012-A', 'Boleta', '4/9/2016', 13593105);
INSERT INTO Documento VALUES ('100-0013-A', 'Boleta', '4/9/2016', 13593105);

INSERT INTO DetalleDocumento VALUES ('100-0001-A', 'V-0001', 2);
INSERT INTO DetalleDocumento VALUES ('100-0001-A', 'V-0005', 1);
INSERT INTO DetalleDocumento VALUES ('100-0002-A', 'V-0003', 1);
INSERT INTO DetalleDocumento VALUES ('100-0003-A', 'V-0004', 2);
INSERT INTO DetalleDocumento VALUES ('100-0003-A', 'V-0005', 2);
INSERT INTO DetalleDocumento VALUES ('100-0004-A', 'V-0005', 3);
INSERT INTO DetalleDocumento VALUES ('100-0005-A', 'V-0006', 1);
INSERT INTO DetalleDocumento VALUES ('100-0006-A', 'V-0001', 2);
INSERT INTO DetalleDocumento VALUES ('100-0006-A', 'V-0009', 1);
INSERT INTO DetalleDocumento VALUES ('100-0007-A', 'V-0010', 2);
INSERT INTO DetalleDocumento VALUES ('100-0008-A', 'V-0010', 2);
INSERT INTO DetalleDocumento VALUES ('100-0009-A', 'V-0008', 1);
INSERT INTO DetalleDocumento VALUES ('100-0010-A', 'V-0002', 1);
INSERT INTO DetalleDocumento VALUES ('100-0010-A', 'V-0003', 2);
INSERT INTO DetalleDocumento VALUES ('100-0011-A', 'V-0005', 1);
INSERT INTO DetalleDocumento VALUES ('100-0012-A', 'V-0001', 2);
INSERT INTO DetalleDocumento VALUES ('100-0013-A', 'V-0004', 2);