
/************************************************************
PROYECTO
**************************************************************/

CREATE DATABASE BD_PROYECTO
GO
USE BD_PROYECTO
GO

/****** Object:  Table [dbo].[t_Proyecto]    Script Date: 05/21/2015 17:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Proyecto](
	[codigo_p] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha_ini] [date] NULL,
	[fecha_fin] [date] NULL,
	[responsable] [varchar](50) NULL,
	[observacion] [varchar](50) NULL,
	[codigo_c] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_t_Proyecto] PRIMARY KEY CLUSTERED 
(
	[codigo_p] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


insert t_Proyecto(nombre,fecha_ini,fecha_fin,responsable,observacion,codigo_c,estado) values('Proyecto1','2015-04-01','2015-06-01','Resposanble1','Test1',1,1)
insert t_Proyecto(nombre,fecha_ini,fecha_fin,responsable,observacion,codigo_c,estado) values('Proyecto2','2015-04-02','2015-05-01','Resposanble1','Test2',1,1)

select * from t_Proyecto

/****** Object:  Table [dbo].[t_Monitoreo]    Script Date: 05/21/2015 17:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Monitoreo](
	[codigo_m] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ini] [date] NULL,
	[fecha_fin] [date] NULL,
	[cantidad_so2] [int] NULL,
	[cantidad_no2] [int] NULL,
	[cantidad_co2] [int] NULL,
	[codigo_ct] [int] NULL,
	[codigo_p] int
 CONSTRAINT [PK_t_Monitoreo] PRIMARY KEY CLUSTERED 
(
	[codigo_m] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SELECT * FROM t_Monitoreo

/****** Object:  Table [dbo].[t_Cotizacion]    Script Date: 05/21/2015 17:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Cotizacion](
	[codigo_ct] [int] IDENTITY(1,1) NOT NULL,
	[monto] [decimal](18, 0) NULL,
	[observacion] [varchar](50) NULL,
	[fecha] [date] NULL,
	[codigo_p] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


/************************************************************
COMERCIAL
**************************************************************/

CREATE DATABASE BD_COMERCIAL
GO

USE BD_COMERCIAL
GO

/****** Object:  Table [dbo].[t_Cliente]    Script Date: 05/21/2015 17:01:46 *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Cliente](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[ruc] [varchar](20) NULL,
	[razonSocial] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[telefono] [varchar](20) NULL,
 CONSTRAINT [PK_t_Cliente] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


insert into dbo.t_Cliente(ruc,razonSocial,direccion,correo,telefono) values('20123456789','Sedapal','Av. las lomas 348','sedapal@sdp.com','123-5151')
insert into dbo.t_Cliente(ruc,razonSocial,direccion,correo,telefono) values('30123456789','Gloria','Av. mariscal 547','gloria@gloria.com','456-5050')
insert into dbo.t_Cliente(ruc,razonSocial,direccion,correo,telefono) values('40123456789','Aje','calle la union 123','servicio@aje.com','987-4550')
insert into dbo.t_Cliente(ruc,razonSocial,direccion,correo,telefono) values('50123456789','Municipalidad de Lima','Jr. Este 133','municipalida@lima.com','001-5030')


select * from dbo.t_Cliente

/* tabla servicio */
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[T_SERVICIO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

insert T_SERVICIO(descripcion) values('servicio1')
insert T_SERVICIO(descripcion) values('servicio2')
insert T_SERVICIO(descripcion) values('servicio3')

select * from T_SERVICIO


/************************************************************
RRHH
**************************************************************/

CREATE DATABASE BD_RRHH
GO

USE BD_RRHH
GO

/****** Object:  Table [dbo].[t_Responsable]    Script Date: 05/19/2015 23:50:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Responsable](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	apepaterno [varchar](50) NULL,
	 apematerno [varchar] (50) NULL,
	correo [varchar](50) NULL,
	telefono [varchar](50) NULL,
	edad smallint null,
	sexo char(1) null
 CONSTRAINT [PK_t_Responsable] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


insert into dbo.t_Responsable values('mijael','palomino','palomino','p@p.com','355-4444',28,'M')
insert into dbo.t_Responsable values('glenn','garcia','perez','g@g.com','355-5555',27,'M')
insert into dbo.t_Responsable values('jesus','la torre','castañeda','j@j.com','355-3333',25,'M')

select * from dbo.t_Responsable


