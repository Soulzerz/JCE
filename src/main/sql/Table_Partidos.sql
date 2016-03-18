USE [JCE]
GO

ALTER TABLE [Administracion].[Partidos] DROP CONSTRAINT [DF__Partidos__FechaC__06CD04F7]
GO

ALTER TABLE [Administracion].[Partidos] DROP CONSTRAINT [DF__Partidos__Estado__05D8E0BE]
GO

ALTER TABLE [Administracion].[Partidos] DROP CONSTRAINT [DF__Partidos__Total___04E4BC85]
GO

/****** Object:  Table [Administracion].[Partidos]    Script Date: 18/03/2016 07:44:41 a.m. ******/
DROP TABLE [Administracion].[Partidos]
GO

/****** Object:  Table [Administracion].[Partidos]    Script Date: 18/03/2016 07:44:41 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Administracion].[Partidos](
	[ID_Partido] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Total_Votos] [bigint] NULL,
	[ID_Usuario] [int] NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [smalldatetime] NULL,
	[FechaModificacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Partido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [Administracion].[Partidos] ADD  DEFAULT ((0)) FOR [Total_Votos]
GO

ALTER TABLE [Administracion].[Partidos] ADD  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [Administracion].[Partidos] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO

