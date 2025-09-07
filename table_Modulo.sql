USE [Prueba]
GO

/****** Object:  Table [dbo].[Modulo]    Script Date: 07/09/2025 01:05:50 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Modulo](
	[idModulo] [int] IDENTITY(1,1) NOT NULL,
	[nombreModulo] [varchar](100) NULL,
	[estatus] [int] NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

