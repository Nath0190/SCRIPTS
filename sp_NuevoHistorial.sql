USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_NuevoHistorial]    Script Date: 10/09/2025 08:44:16 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_NuevoHistorial](
	@p_idProducto int,
	@p_idUsuario int,
	@p_movimiento varchar(20)
) AS
BEGIN

	INSERT INTO Historial (idUsuario, idProducto, tipoMovimiento, fechaModificacion)
	VALUES(@p_idUsuario,@p_idProducto, @p_movimiento, GETDATE())

END
GO

