USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ConsultaStock]    Script Date: 10/09/2025 08:43:09 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ConsultaStock](
	@p_idProducto int,
	@p_cantidad int,
	@p_idUsuario int,
	@p_movimiento varchar(20)
) AS
BEGIN
	DECLARE @cont int
	SET @cont  = (SELECT cantidad FROM Producto WHERE idProducto=@p_idProducto)

	IF @cont >= @p_cantidad 
	BEGIN
		DECLARE  @resultado int = (@cont -@p_cantidad)
		UPDATE Producto SET
			cantidad = @resultado
		WHERE idProducto = @p_idProducto
		
		EXECUTE dbo.sp_NuevoHistorial @p_idProducto =@p_idProducto , @p_idUsuario=@p_idUsuario, @p_movimiento=@p_movimiento
		
		SELECT  'ok' as msj
	END
	ELSE 
	BEGIN
		SELECT  'ErrorCantidadInsuficiente' as msj
	END

END
GO

