/* Base de datos del proyecto Programaci�n 4 
** Para uso no comercial
** Autores:
**		Luis Antonio Bola�os Gonz�lez
**
**	NOTAS PARA PABLO:
**     1. En la tabla TipoTarifa no entiendo si hay o no hay llave for�nea. El c�digo lo dej� comentado en caso que s�.
**	   2. En la �ltima tabla DetalleViatico no entend� ni relaciones ni llave primaria. Por favor hacerlas.
*/

-- Creaci�n de la Base de Datos --

USE master
GO

CREATE DATABASE [DB_Biaticos]
GO

USE [DB_Biaticos]
GO

/* Creaci�n de las Tablas */
-------------------------------------

-- Creaci�n de la tabla Estado --

CREATE TABLE [dbo].[Estado] (
	IdEstado int NOT NULL,
	DescEstado nvarchar(50),
	--Llave primaria
	CONSTRAINT PK_IdEstado
		PRIMARY KEY (IdEstado)
)
GO

-- Creaci�n de la tabla RolUsuario --

CREATE TABLE [dbo].[RolUsuario] (
	IdRol int NOT NULL,
	IdEstado int NOT NULL,
	DescEstado nvarchar(50),
	--Llave primaria
	CONSTRAINT PK_IdRol
		PRIMARY KEY (IdRol),
	--Llaves for�neas
	CONSTRAINT FK_RolUsuario_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado)
)
GO

-- Creaci�n de la tabla Usuario --

CREATE TABLE [dbo].[Usuario] (
	NomUsuario nvarchar(30) NOT NULL,
	IdRol int NOT NULL,
	IdEstado int NOT NULL,
	ClaveAcceso nvarchar(30) NOT NULL,
	--Llave primaria
	CONSTRAINT PK_NomUsuario
		PRIMARY KEY (NomUsuario),
	--Llaves for�neas
	CONSTRAINT FK_Usuario_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_Usuario_RolUsuario	
		FOREIGN KEY (IdRol)
		REFERENCES RolUsuario(IdRol)
)
GO

-- Creaci�n de la tabla Persona --

CREATE TABLE [dbo].[Persona] (
	IdPersona int NOT NULL,
	NomUsuario nvarchar(30) NOT NULL,
	Nombre nvarchar(125) NOT NULL,
	PrimerApellido nvarchar(125) NOT NULL,
	SegundoApellido nvarchar(125),
	Email nvarchar(125),
	--Llave primaria
	CONSTRAINT PK_IdPersona
		PRIMARY KEY (IdPersona),
	--Llaves for�neas
	CONSTRAINT FK_Persona_Usuario
		FOREIGN KEY (NomUsuario)
		REFERENCES Usuario(NomUsuario)
)
GO

-- Creaci�n de la tabla Provincia --

CREATE TABLE [dbo].[Provincia] (
	CodProvincia int NOT NULL,
	DescProvincia nvarchar(25),
	--Llave primaria
	CONSTRAINT PK_CodProvincia
		PRIMARY KEY (CodProvincia)
)
GO

-- Creaci�n de la tabla Cant�n --

CREATE TABLE [dbo].[Canton] (
	CodCanton int NOT NULL,
	CodProvincia int NOT NULL,
	DescCanton nvarchar(25),
	--Llave primaria
	CONSTRAINT PK_CodCanton
		PRIMARY KEY (CodCanton),
	--Llaves for�neas
	CONSTRAINT FK_Canton_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia)
)
GO

-- Creaci�n de la tabla TarifaAutobus --

CREATE TABLE [dbo].[TarifaAutobus] (
	CodRuta nvarchar(10) NOT NULL,
	CodProvincia int NOT NULL,
	IdEstado int,
	TarifaReg float,
	DscRuta nvarchar(25),
	FechaVigencia datetime,
	--Llave primaria
	CONSTRAINT PK_CodRuta
		PRIMARY KEY (CodRuta),
	--Llaves for�neas
	CONSTRAINT FK_TarifaAutobus_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_TarifaAutobus_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia)
)
GO

-- Creaci�n de la tabla TipoTarifa --

CREATE TABLE [dbo].[TipoTarifa] (
	IdTipoTarifa int NOT NULL,
	IdEspacio int,
	DescTipoTarifa nvarchar(25)
	--Llave primaria
	CONSTRAINT PK_IdTipoTarifa
		PRIMARY KEY (IdTipoTarifa)
	/*--Llaves for�neas
	CONSTRAINT FK_Canton_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia)*/
)
GO

-- Creaci�n de la tabla ModTarifarioViatico --

CREATE TABLE [dbo].[ModTarifarioViatico] (
	IdModTarifa int NOT NULL,
	CodProvincia int NOT NULL,
	CodCanton int NOT NULL,
	CodRuta nvarchar(10) NOT NULL,
	IdEstado int NOT NULL,
	IdTipoTarifa int NOT NULL,
	Localidad nvarchar(25),
	MonTarifa float,
	FechaTarifa datetime,
	AnioTarifa int
	--Llave primaria
	CONSTRAINT PK_IdModTarifa
		PRIMARY KEY (IdModTarifa),
	--Llaves for�neas
	CONSTRAINT FK_ModTarifarioViatico_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia),
	CONSTRAINT FK_ModTarifarioViatico_Canton
		FOREIGN KEY (CodCanton)
		REFERENCES Canton(CodCanton),
	CONSTRAINT FK_ModTarifarioViatico_TarifaAutobus
		FOREIGN KEY (CodRuta)
		REFERENCES TarifaAutobus(CodRuta),
	CONSTRAINT FK_ModTarifarioViatico_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_ModTarifarioViatico_TipoTarifa
		FOREIGN KEY (IdTipoTarifa)
		REFERENCES TipoTarifa(IdTipoTarifa)
)
GO

-- Creaci�n de la tabla SolicitudViaticos --

CREATE TABLE [dbo].[SolicitudViaticos] (
	IdSolicitud int NOT NULL,
	NomUsuario nvarchar(30) NOT NULL,
	IdEstado int NOT NULL,
	Destino nvarchar(25),
	Justificacion nvarchar(255),
	FechaCreacion datetime,
	FechaHoraSalida datetime,
	FechaHoraRegreso datetime
	--Llave primaria
	CONSTRAINT PK_IdSolicitud
		PRIMARY KEY (IdSolicitud)
	--Llaves for�neas
	CONSTRAINT FK_SolicitudViaticos_Usuario
		FOREIGN KEY (NomUsuario)
		REFERENCES Usuario(NomUsuario),
	CONSTRAINT FK_SolicitudViaticos_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado)
)
GO

-- Creaci�n de la tabla CabeceraOrdenViatico --

CREATE TABLE [dbo].[CabeceraOrdenViatico] (
	IdOrden int NOT NULL ,  
	IdSolicitud int NOT NULL,
	IdEstado int NOT NULL,
	FechaOrden datetime
	--Llave primaria
	CONSTRAINT PK_IdOrden
		PRIMARY KEY (IdOrden),
	--Llaves for�neas
	CONSTRAINT FK_CabeceraOrdenViatico_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_CabeceraOrdenViatico_SolicitudViaticos
		FOREIGN KEY (IdSolicitud)
		REFERENCES SolicitudViaticos(IdSolicitud)
)
GO

-- Creaci�n de la tabla CabeceraLiquidacion --

CREATE TABLE [dbo].[CabeceraLiquidacion] (
	IdLiquidacion int NOT NULL,
	IdOrden int NOT NULL,
	IdEstado int NOT NULL,
	FechaLiquidacion datetime,
	MonCena float,
	MonDes float,
	MonHosp float,
	MonPasj float,
	MonAlm float,
	--Llave primaria
	CONSTRAINT PK_IdLiquidacion
		PRIMARY KEY (IdLiquidacion),
	--Llaves for�neas
	CONSTRAINT FK_CabeceraLiquidacion_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_CabeceraLiquidacion_CabeceraOrdenViatico
		FOREIGN KEY (IdOrden)
		REFERENCES CabeceraOrdenViatico(IdOrden)
)
GO

-- Creaci�n de la tabla DetalleSolicitudViaticos --

CREATE TABLE [dbo].[DetalleSolicitudViaticos] (
	IdDetalleSolicitud int NOT NULL , 
	IdSolicitud int NOT NULL,
	IdPersona int NOT NULL,
	IdModTarifa int,
	CodRuta nvarchar(10) NOT NULL,
	CantViatico float,
	CantPasaje float,
	FechaViatico datetime,
	--Llave primaria
	CONSTRAINT PK_IdDetalleSolicitud
		PRIMARY KEY (IdDetalleSolicitud),
	--Llaves for�neas
	CONSTRAINT FK_DetalleSolicitudViaticos_SolicitudViaticos
		FOREIGN KEY (IdSolicitud)
		REFERENCES SolicitudViaticos(IdSolicitud),
	CONSTRAINT FK_DetalleSolicitudViaticos_Persona
		FOREIGN KEY (IdPersona)
		REFERENCES Persona(IdPersona),
	CONSTRAINT FK_DetalleSolicitudViaticos_ModTarifarioViatico
		FOREIGN KEY (IdModTarifa)
		REFERENCES ModTarifarioViatico(IdModTarifa),
	CONSTRAINT FK_DetalleSolicitudViaticos_TarifaAutobus
		FOREIGN KEY (CodRuta)
		REFERENCES TarifaAutobus(CodRuta)
)
GO

-- Creaci�n de la tabla DetalleViatico --

CREATE TABLE [dbo].[DetalleViatico] (
	IdDetalleViatico int NOT NULL ,  
	IdDetalle int NOT NULL,
	IdCabOrden int,
	MontDesayuno float,
	MontAlmuerzo float,
	MontCena float,
	CanDesayuno float,
	CanAlmuerzo float,
	CanCena float,
	CanPasaje float
)
GO

/* Insertar datos por defecto */
-------------------------------------

INSERT INTO [dbo].[Estado]
	(IdEstado,DescEstado) VALUES
	(0, 'Desactivado')
GO

INSERT INTO [dbo].[Estado]
	(IdEstado,DescEstado) VALUES
	(1, 'Activado')
GO
--provincias--
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (1,'San jose') 
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (2,'Alajuela') 
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (3,'Cartago') 
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (4,'Guanacaste') 
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (5,'Heredia') 
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (6,'Limon') 
INSERT INTO [dbo].[Provincia] (CodProvincia,DescProvincia) values (7,'Puntarenas') 

GO
--Cantones de san jose--
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (1,1,'San jose')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (2,1,'Acosta')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (3,1,'Alajuelita')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (4,1,'Aserri')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (5,1,'Curridabat')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (6,1,'Desamparados')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (7,1,'Dota')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (8,1,'Escazu')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (9,1,'Goicoechea')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (10,1,'Leon Cortes')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (11,1,'Montes de Oca')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (12,1,'Mora')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (13,1,'Moravia')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (14,1,'Perez Zeledon')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (15,1,'Puriscal')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (16,1,'Santa Ana')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (17,1,'Tarrazu')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (18,1,'Tibas')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (19,1,'Turrubares')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (20,1,'Vazquez de Coronado')

--Cantones de alajuela--
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (21,2,'Alajuela')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (22,2,'Atenas')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (23,2,'Grecia')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (24,2,'Guatuso')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (25,2,'Los Chiles')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (26,2,'Naranjo')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (27,2,'Orotina')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (28,2,'Palmares')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (29,2,'Poas')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (30,2,'Rio Cuarto')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (31,2,'San Carlos')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (32,2,'San Mateo')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (33,2,'San Ramon')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (34,2,'Upala')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (35,2,'Valverde Vega')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (36,2,'Zalcero')

--Cantones de cartago--
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (37,3,'Cartago')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (38,3,'Alvarado')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (39,3,'El Guarco')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (40,3,'Jimenez')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (41,3,'La Union')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (42,3,'Oreamuno')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (43,3,'Paraiso')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (44,3,'Turrialba')

--Cantones de guanacaste--

INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (45,4,'Liberia')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (46,4,'Abangares')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (47,4,'Bagaces')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (48,4,'Ca�as')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (49,4,'Carrillo')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (50,4,'Hojancha')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (51,4,'La Cruz')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (52,4,'Nandayure')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (53,4,'Nicoya')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (54,4,'Santa Cruz')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (55,4,'Tilaran')

--cantones de heredia--

INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (56,5,'Heredia')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (57,5,'Barva')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (58,5,'Belen')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (59,5,'Flores')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (60,5,'San Isidro')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (61,5,'San Pablo')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (62,5,'San Rafael')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (63,5,'Santa Barbara')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (64,5,'Santo Domingo')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (65,5,'Sarapiqui')

--cantones de limon--

INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (66,6,'Limon')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (67,6,'Guacimo')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (68,6,'Matina')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (69,6,'Pococi')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (70,6,'Siquirres')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (71,6,'Talamanca')

--Cantones de puntarenas--

INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (72,7,'Puntarenas')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (73,7,'Bueno Aires')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (74,7,'Corredores')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (75,7,'Coto Brus')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (76,7,'Esparza')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (77,7,'Garabito')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (78,7,'Golfito')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (79,7,'Montes de Oro')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (80,7,'Osa')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (81,7,'Parrita')
INSERT INTO [dbo].[Canton] (CodCanton,CodProvincia,DescCanton) values (82,7,'Quepos')
go
INSERT INTO [dbo].[RolUsuario] (IdRol,IdEstado,DescEstado) values(1,1,'Funcionario')
INSERT INTO [dbo].[RolUsuario] (IdRol,IdEstado,DescEstado) values(2,1,'Jefatura')
go
INSERT INTO [dbo].[TipoTarifa] (IdTipoTarifa,DescTipoTarifa) values(1,'Regular')
go
insert into TarifaAutobus values ('12',1,1,232,'asa',12/12/2020)
go
insert into ModTarifarioViatico values (1,1,1,'12',1,1,'asa',200,GETDATE(),2019)
go
select*from ModTarifarioViatico
create procedure sp_CrearSolicitud
(
@idSolicitud int,
@NomUsuario nvarchar(30),
@Destino nvarchar(25),
@justificacion nvarchar(255),
@FechaCreacion datetime,
@FechaHoraSalida datetime,
@FechaHoraRegreso datetime

)
as 
begin

insert into SolicitudViaticos values (@idSolicitud,@NomUsuario,1,@Destino,@justificacion,@FechaCreacion,@FechaHoraSalida,@FechaHoraRegreso)

end 
go

alter procedure sp_CrearDetalleSolicitud
(
@idDetalleSolicitud int,
@idSolicitud int,
@idPersona int,
@FechaCreacion datetime,
@CantidadPasajes float,
@CantidadViaticos float


)
as 
begin


insert into  DetalleSolicitudViaticos values (@idDetalleSolicitud,@idSolicitud,@idPersona,1,'12',@CantidadViaticos,@CantidadPasajes,@FechaCreacion)

end 
go

create procedure sp_CrearDetalleViatico
(
@idDetalleViatico int,
@idDetalle int,
@idOrden int,
@CatidadDesayunos float,
@CantidadAlmuerzos float,
@CantidadCenas float,
@CantidadPasajes float,
@MontoDesayuno float,
@MontoAlmuerzo float,
@MontoCena float

)
as 
begin

insert into DetalleViatico values (@idDetalleViatico,@idDetalle,@idOrden,@MontoDesayuno,@MontoAlmuerzo,@MontoCena,@CatidadDesayunos,@CantidadAlmuerzos,@CantidadCenas,@CantidadPasajes)


/*recordar generar idorden y en base al colaborador el id persona*/
end 
go

create procedure sp_CrearOrden
(
@idOrden int,
@idSolicitud int
)
as 
begin



insert into CabeceraOrdenViatico values(@idOrden,@idSolicitud,0,'01/01/1999')

end
go

create procedure ConsultarID
AS
BEGIN
     SELECT IdSolicitud FROM SolicitudViaticos WHERE IdSolicitud = (SELECT MAX(IdSolicitud) FROM SolicitudViaticos)
END
GO

select*from SolicitudViaticos
select*from DetalleSolicitudViaticos
select*from DetalleViatico
select*from CabeceraOrdenViatico
select*from Persona
select*from Usuario
delete from SolicitudViaticos
delete from DetalleSolicitudViaticos 
delete from DetalleViatico
delete from CabeceraOrdenViatico




