USE [Prueba]
GO

/****** Object:  Table [dbo].[Producto]    Script Date: 07/09/2025 01:06:12 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[estatus] [int] NULL,
	[nombre] [varchar](100) NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[idUsuarioModificacion] [int] NULL,
	[fechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

