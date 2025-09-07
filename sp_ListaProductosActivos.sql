USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListaProductosActivos]    Script Date: 07/09/2025 01:10:32 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ListaProductosActivos] AS
BEGIN
	SELECT 
		idProducto, estatus, nombre, cantidad, precio
	FROM Producto P	
	WHERE estatus =1
END	
GO

