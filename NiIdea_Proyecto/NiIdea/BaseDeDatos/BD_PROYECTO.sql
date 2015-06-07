CREATE DATABASE BD_PROYECTO
GO

USE BD_PROYECTO
GO

/****** Object:  Table [dbo].[t_Proyecto]    Script Date: 05/21/2015 17:01:46 ******/
CREATE TABLE [dbo].[t_Proyecto](
	[codigo_p] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha_ini] [date] NULL,
	[fecha_fin] [date] NULL,
	[responsable] [varchar](50) NULL,
	[observacion] [varchar](50) NULL,
	[codigo_c] [int] NULL,
	[estado] [int] NULL,
	estadoCierre bit null,
	descCierre varchar(200) null
 CONSTRAINT [PK_t_Proyecto] PRIMARY KEY CLUSTERED 
(
	[codigo_p] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



/****** Object:  Table [dbo].[t_Monitoreo]    Script Date: 05/21/2015 17:01:46 ******/
CREATE TABLE [dbo].[t_Monitoreo](
	[codigo_m] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ini] [date] NULL,
	[fecha_fin] [date] NULL,
	[cantidad_so2] [int] NULL,
	[cantidad_no2] [int] NULL,
	[cantidad_co2] [int] NULL,
	[codigo_ct] [int] NULL,
 CONSTRAINT [PK_t_Monitoreo] PRIMARY KEY CLUSTERED 
(
	[codigo_m] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



/****** Object:  Table [dbo].[t_Cotizacion]    Script Date: 05/21/2015 17:01:46 ******/
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