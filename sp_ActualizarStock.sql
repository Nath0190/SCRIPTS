USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_ActualizarStock]    Script Date: 07/09/2025 01:08:46 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_ActualizarStock](
	@p_idProducto int,
	@p_cantidad int
) AS
BEGIN
	DECLARE @cont int
	SET @cont  = (SELECT cantidad FROM Producto WHERE idProducto=@p_idProducto)

	IF @cont > @p_cantidad 
	BEGIN
		UPDATE Producto SET
			cantidad = @p_cantidad
		WHERE idProducto = @p_idProducto
	END
	ELSE 
	BEGIN
		SELECT  'Error' as msj
	END

END
GO

