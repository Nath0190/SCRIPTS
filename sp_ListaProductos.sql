USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListaProductos]    Script Date: 10/09/2025 08:43:49 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ListaProductos] AS
BEGIN
	SELECT 
		idProducto, estatus, 
		case when estatus =1 then 'ALTA' ELSE  'BAJA' END nombreEstatus,
		nombre, cantidad, precio
	FROM Producto P	
	--WHERE 
END	
GO

