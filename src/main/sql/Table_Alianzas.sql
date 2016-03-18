USE [JCE]
GO

ALTER TABLE [Administracion].[Alianzas] DROP CONSTRAINT [FK_Alianzas_Provincias]
GO

ALTER TABLE [Administracion].[Alianzas] DROP CONSTRAINT [FK_Alianzas_Partidos1]
GO

ALTER TABLE [Administracion].[Alianzas] DROP CONSTRAINT [FK_Alianzas_Partidos]
GO

ALTER TABLE [Administracion].[Alianzas] DROP CONSTRAINT [DF__Alianzas__FechaC__47A6A41B]
GO

ALTER TABLE [Administracion].[Alianzas] DROP CONSTRAINT [DF__Alianzas__Estado__46B27FE2]
GO

/****** Object:  Table [Administracion].[Alianzas]    Script Date: 18/03/2016 07:44:26 a.m. ******/
DROP TABLE [Administracion].[Alianzas]
GO

/****** Object:  Table [Administracion].[Alianzas]    Script Date: 18/03/2016 07:44:26 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Administracion].[Alianzas](
	[ID_Alianzas] [int] IDENTITY(1,1) NOT NULL,
	[ID_PartidoPrincipal] [int] NOT NULL,
	[ID_Partido] [int] NOT NULL,
	[ID_Provincia] [int] NOT NULL,
	[ID_Usuario] [int] NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [smalldatetime] NULL,
	[FechaModificacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Alianzas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_PartidoPrincipal] ASC,
	[ID_Partido] ASC,
	[ID_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [Administracion].[Alianzas] ADD  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [Administracion].[Alianzas] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO

ALTER TABLE [Administracion].[Alianzas]  WITH CHECK ADD  CONSTRAINT [FK_Alianzas_Partidos] FOREIGN KEY([ID_PartidoPrincipal])
REFERENCES [Administracion].[Partidos] ([ID_Partido])
GO

ALTER TABLE [Administracion].[Alianzas] CHECK CONSTRAINT [FK_Alianzas_Partidos]
GO

ALTER TABLE [Administracion].[Alianzas]  WITH CHECK ADD  CONSTRAINT [FK_Alianzas_Partidos1] FOREIGN KEY([ID_Partido])
REFERENCES [Administracion].[Partidos] ([ID_Partido])
GO

ALTER TABLE [Administracion].[Alianzas] CHECK CONSTRAINT [FK_Alianzas_Partidos1]
GO

ALTER TABLE [Administracion].[Alianzas]  WITH CHECK ADD  CONSTRAINT [FK_Alianzas_Provincias] FOREIGN KEY([ID_Provincia])
REFERENCES [Administracion].[Provincias] ([ID_Provincia])
GO

ALTER TABLE [Administracion].[Alianzas] CHECK CONSTRAINT [FK_Alianzas_Provincias]
GO

