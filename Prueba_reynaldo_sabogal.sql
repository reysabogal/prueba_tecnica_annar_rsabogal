USE [prueba_reynaldo_sabogal]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 26/10/2023 6:07:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[Id] [int] NOT NULL,
	[TipoDocumento] [varchar](50) NULL,
	[NumeroDocumento] [varchar](50) NULL,
	[Nombres] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[CorreoElectronico] [varchar](50) NULL,
	[Telefono] [varchar](20) NULL,
	[FechaNacimiento] [date] NULL,
	[EstadoAfiliacion] [varchar](50) NULL,
 CONSTRAINT [Pacientes_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Pacientes] ([Id], [TipoDocumento], [NumeroDocumento], [Nombres], [Apellidos], [CorreoElectronico], [Telefono], [FechaNacimiento], [EstadoAfiliacion]) VALUES (1, N'CC - Cedula', N'1110475411', N'Paco Alejandro', N'Balbuena Perea', N'Paco@paco.com', N'3125786950', CAST(N'1985-12-10' AS Date), N'Activo')
INSERT [dbo].[Pacientes] ([Id], [TipoDocumento], [NumeroDocumento], [Nombres], [Apellidos], [CorreoElectronico], [Telefono], [FechaNacimiento], [EstadoAfiliacion]) VALUES (2, N'PA - Cedula', N'14562896', N'Rosa Maria', N'Posada', N'Teodora@yahoo.com', N'318452696', CAST(N'1989-12-10' AS Date), N'Inactivo')
INSERT [dbo].[Pacientes] ([Id], [TipoDocumento], [NumeroDocumento], [Nombres], [Apellidos], [CorreoElectronico], [Telefono], [FechaNacimiento], [EstadoAfiliacion]) VALUES (3, N'PA - Pasaporte', N'14562896', N'Pedro Maria', N'Posada', N'PedroRozo@yahoo.com', N'318452696', CAST(N'1989-12-10' AS Date), N'Activo')
GO
