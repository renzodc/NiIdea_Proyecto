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
