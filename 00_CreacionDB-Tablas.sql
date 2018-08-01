/* Base de datos del proyecto Programación 4 
** Para uso no comercial
** Autores:
**		Luis Antonio Bolaños González
**
**	NOTAS PARA PABLO:
**     1. En la tabla TipoTarifa no entiendo si hay o no hay llave foránea. El código lo dejé comentado en caso que sí.
**	   2. En la última tabla DetalleViatico no entendí ni relaciones ni llave primaria. Por favor hacerlas.
*/

-- Creación de la Base de Datos --

USE master
GO

CREATE DATABASE [DB_Biaticos]
GO

USE [DB_Biaticos]
GO

/* Creación de las Tablas */
-------------------------------------

-- Creación de la tabla Estado --

CREATE TABLE [dbo].[Estado] (
	IdEstado int NOT NULL,
	DescEstado nvarchar(50),
	--Llave primaria
	CONSTRAINT PK_IdEstado
		PRIMARY KEY (IdEstado)
)
GO

-- Creación de la tabla RolUsuario --

CREATE TABLE [dbo].[RolUsuario] (
	IdRol int NOT NULL,
	IdEstado int NOT NULL,
	DescEstado nvarchar(50),
	--Llave primaria
	CONSTRAINT PK_IdRol
		PRIMARY KEY (IdRol),
	--Llaves foráneas
	CONSTRAINT FK_RolUsuario_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado)
)
GO

-- Creación de la tabla Usuario --

CREATE TABLE [dbo].[Usuario] (
	NomUsuario nvarchar(30) NOT NULL,
	IdRol int NOT NULL,
	IdEstado int NOT NULL,
	ClaveAcceso nvarchar(30) NOT NULL,
	--Llave primaria
	CONSTRAINT PK_NomUsuario
		PRIMARY KEY (NomUsuario),
	--Llaves foráneas
	CONSTRAINT FK_Usuario_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_Usuario_RolUsuario	
		FOREIGN KEY (IdRol)
		REFERENCES RolUsuario(IdRol)
)
GO

-- Creación de la tabla Persona --

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
	--Llaves foráneas
	CONSTRAINT FK_Persona_Usuario
		FOREIGN KEY (NomUsuario)
		REFERENCES Usuario(NomUsuario)
)
GO

-- Creación de la tabla Provincia --

CREATE TABLE [dbo].[Provincia] (
	CodProvincia int NOT NULL,
	DescProvincia nvarchar(25),
	--Llave primaria
	CONSTRAINT PK_CodProvincia
		PRIMARY KEY (CodProvincia)
)
GO

-- Creación de la tabla Cantón --

CREATE TABLE [dbo].[Canton] (
	CodCanton int NOT NULL,
	CodProvincia int NOT NULL,
	DescCanton nvarchar(25),
	--Llave primaria
	CONSTRAINT PK_CodCanton
		PRIMARY KEY (CodCanton),
	--Llaves foráneas
	CONSTRAINT FK_Canton_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia)
)
GO

-- Creación de la tabla TarifaAutobus --

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
	--Llaves foráneas
	CONSTRAINT FK_TarifaAutobus_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_TarifaAutobus_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia)
)
GO

-- Creación de la tabla TipoTarifa --

CREATE TABLE [dbo].[TipoTarifa] (
	IdTipoTarifa int NOT NULL,
	IdEspacio int,
	DescTipoTarifa nvarchar(25)
	--Llave primaria
	CONSTRAINT PK_IdTipoTarifa
		PRIMARY KEY (IdTipoTarifa)
	/*--Llaves foráneas
	CONSTRAINT FK_Canton_Provincia
		FOREIGN KEY (CodProvincia)
		REFERENCES Provincia(CodProvincia)*/
)
GO

-- Creación de la tabla ModTarifarioViatico --

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
	--Llaves foráneas
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

-- Creación de la tabla SolicitudViaticos --

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
	--Llaves foráneas
	CONSTRAINT FK_SolicitudViaticos_Usuario
		FOREIGN KEY (NomUsuario)
		REFERENCES Usuario(NomUsuario),
	CONSTRAINT FK_SolicitudViaticos_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado)
)
GO

-- Creación de la tabla CabeceraOrdenViatico --

CREATE TABLE [dbo].[CabeceraOrdenViatico] (
	IdOrden int NOT NULL,
	IdSolicitud int NOT NULL,
	IdEstado int NOT NULL,
	FechaOrden datetime
	--Llave primaria
	CONSTRAINT PK_IdOrden
		PRIMARY KEY (IdOrden),
	--Llaves foráneas
	CONSTRAINT FK_CabeceraOrdenViatico_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_CabeceraOrdenViatico_SolicitudViaticos
		FOREIGN KEY (IdSolicitud)
		REFERENCES SolicitudViaticos(IdSolicitud)
)
GO

-- Creación de la tabla CabeceraLiquidacion --

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
	--Llaves foráneas
	CONSTRAINT FK_CabeceraLiquidacion_Estado
		FOREIGN KEY (IdEstado)
		REFERENCES Estado(IdEstado),
	CONSTRAINT FK_CabeceraLiquidacion_CabeceraOrdenViatico
		FOREIGN KEY (IdOrden)
		REFERENCES CabeceraOrdenViatico(IdOrden)
)
GO

-- Creación de la tabla DetalleSolicitudViaticos --

CREATE TABLE [dbo].[DetalleSolicitudViaticos] (
	IdDetalleSolicitud int NOT NULL,
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
	--Llaves foráneas
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

-- Creación de la tabla DetalleViatico --

CREATE TABLE [dbo].[DetalleViatico] (
	IdDetalleViatico int NOT NULL,
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