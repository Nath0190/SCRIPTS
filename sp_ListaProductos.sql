USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListaProductos]    Script Date: 07/09/2025 01:09:58 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ListaProductos] AS
BEGIN
	SELECT 
		idProducto, estatus, nombre, cantidad, precio
	FROM Producto P	
	--WHERE 
END	
GO

