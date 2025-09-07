USE [Prueba]
GO

/****** Object:  Table [dbo].[Rel_Rol_Usuario]    Script Date: 07/09/2025 01:06:37 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rel_Rol_Usuario](
	[idRel_Rol_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NULL,
	[idModulo] [int] NULL,
	[estatus] [int] NULL,
	[permiso] [int] NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Rel_Rol_Usuario]  WITH CHECK ADD FOREIGN KEY([idModulo])
REFERENCES [dbo].[Modulo] ([idModulo])
GO

ALTER TABLE [dbo].[Rel_Rol_Usuario]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO

ALTER TABLE [dbo].[Rel_Rol_Usuario]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO

