USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_CambiarEstatusProducto]    Script Date: 10/09/2025 08:42:58 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_CambiarEstatusProducto](
	@p_idProducto int,
	@p_estatus int,
	@p_idUsuario int,
	@p_movimiento varchar(20)
) AS
BEGIN
	
	UPDATE Producto SET
		estatus = @p_estatus,
		idUsuarioModificacion = @p_idUsuario,
		fechaModificacion = GETDATE()
	WHERE idProducto = @p_idProducto
	
	EXECUTE dbo.sp_NuevoHistorial @p_idProducto =@p_idProducto , @p_idUsuario=@p_idUsuario, @p_movimiento=@p_movimiento 
END
GO

