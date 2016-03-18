USE [JCE]
GO

ALTER TABLE [Administracion].[Provincias] DROP CONSTRAINT [DF__Provincia__Fecha__1332DBDC]
GO

ALTER TABLE [Administracion].[Provincias] DROP CONSTRAINT [DF__Provincia__Estad__123EB7A3]
GO

/****** Object:  Table [Administracion].[Provincias]    Script Date: 18/03/2016 07:48:40 a.m. ******/
DROP TABLE [Administracion].[Provincias]
GO

/****** Object:  Table [Administracion].[Provincias]    Script Date: 18/03/2016 07:48:40 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Administracion].[Provincias](
	[ID_Provincia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [smalldatetime] NULL,
	[FechaModificacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [Administracion].[Provincias] ADD  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [Administracion].[Provincias] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO

