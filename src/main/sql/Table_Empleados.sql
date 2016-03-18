USE [JCE]
GO

ALTER TABLE [Seguridad].[Empleados] DROP CONSTRAINT [FK_Empleados_Provincias]
GO

ALTER TABLE [Seguridad].[Empleados] DROP CONSTRAINT [DF__Empleados__Fecha__4E53A1AA]
GO

ALTER TABLE [Seguridad].[Empleados] DROP CONSTRAINT [DF__Empleados__Estad__4D5F7D71]
GO

/****** Object:  Table [Seguridad].[Empleados]    Script Date: 18/03/2016 07:48:30 a.m. ******/
DROP TABLE [Seguridad].[Empleados]
GO

/****** Object:  Table [Seguridad].[Empleados]    Script Date: 18/03/2016 07:48:30 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Seguridad].[Empleados](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Usuario] [varchar](25) NULL,
	[Autorizacion] [smallint] NULL,
	[ID_Provincia] [int] NOT NULL,
	[ID_Usuario] [int] NULL,
	[Estado] [bit] NOT NULL,
	[FechaCreacion] [smalldatetime] NOT NULL,
	[FechaModificacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [Seguridad].[Empleados] ADD  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [Seguridad].[Empleados] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO

ALTER TABLE [Seguridad].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Provincias] FOREIGN KEY([ID_Provincia])
REFERENCES [Administracion].[Provincias] ([ID_Provincia])
GO

ALTER TABLE [Seguridad].[Empleados] CHECK CONSTRAINT [FK_Empleados_Provincias]
GO

