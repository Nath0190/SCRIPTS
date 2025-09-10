USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ActualizarStock]    Script Date: 10/09/2025 08:42:46 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_ActualizarStock](
	@p_idProducto int,
	@p_cantidad int
) AS
BEGIN
	DECLARE @contExistente int
	SET @contExistente  = (SELECT cantidad FROM Producto WHERE idProducto=@p_idProducto)

	IF @p_cantidad >@contExistente   
	BEGIN
		DECLARE  @resultado int = (@contExistente +@p_cantidad)
		UPDATE Producto SET
			cantidad = @resultado
		WHERE idProducto = @p_idProducto
		EXECUTE dbo.sp_NuevoHistorial @p_idProducto =@p_idProducto , @p_idUsuario=1, @p_movimiento='ENTRADA'
		SELECT  'ok' as msj
	END
	ELSE 
	BEGIN
		SELECT  'ErrorCantidadNoExiste' as msj
	END

END
GO

