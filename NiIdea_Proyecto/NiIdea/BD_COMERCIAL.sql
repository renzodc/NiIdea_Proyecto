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
