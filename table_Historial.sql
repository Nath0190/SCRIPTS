USE [Prueba]
GO

/****** Object:  Table [dbo].[Historial]    Script Date: 10/09/2025 08:41:52 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Historial](
	[idHistorial] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[idProducto] [int] NULL,
	[tipoMovimiento] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Historial] PRIMARY KEY CLUSTERED 
(
	[idHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Historial]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO

