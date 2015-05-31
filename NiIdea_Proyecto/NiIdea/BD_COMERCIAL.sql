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
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[telefono] [varchar](20) NULL,
	[ruc] [varchar](20) NULL,
 CONSTRAINT [PK_t_Cliente] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


insert into dbo.t_Cliente values('Sedapal','Av. las lomas 348','sedapal@sdp.com','123-5151','12345678685')
insert into dbo.t_Cliente values('Gloria','Av. mariscal 547','gloria@gloria.com','456-5050','78945612698')
insert into dbo.t_Cliente values('Aje','calle la union 123','servicio@aje.com','987-4550','90704561225')
insert into dbo.t_Cliente values('Municipalidad de Lima','Jr. Este 133','municipalida@lima.com','001-5030','20508674905')


select * from dbo.t_Cliente
