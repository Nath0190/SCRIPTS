USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListadoHistorial]    Script Date: 07/09/2025 01:09:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_ListadoHistorial](
	
	@p_idUsuario int,
	@p_movimiento varchar(20)
) AS
BEGIN

	SELECT 
		tipoMovimiento, His.idUsuario, 
		U.nombre AS nombreUsuario, 
		CONVERT(varchar,His.fechaModificacion,20) AS fechaModificacion
	FROM Historial  His
		INNER JOIN Usuario U ON U.idUsuario = His.idUsuario
		inner join Producto P ON P.idProducto= His.idProducto
	WHERE tipoMovimiento=  @p_movimiento and U.idUsuario = @p_idUsuario

END
GO

