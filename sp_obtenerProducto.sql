USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_obtenerProducto]    Script Date: 10/09/2025 08:44:57 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_obtenerProducto](
	@p_idProducto int
) AS
BEGIN

	SELECT
		idProducto, estatus, 
		case when estatus =1 then 'ALTA' ELSE  'BAJA' END nombreEstatus,
		nombre, cantidad, CAST(precio AS DECIMAL(10, 2)) precio 		
	FROM Producto  	
	WHERE idProducto= @p_idProducto --and U.idUsuario = @p_idUsuario

END
GO

