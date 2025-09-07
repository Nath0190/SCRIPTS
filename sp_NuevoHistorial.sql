USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_NuevoHistorial]    Script Date: 07/09/2025 01:10:52 p. m. ******/
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

	INSERT INTO Historial (idUsuario, idProducto, tipoMoviento, fechaModificacion)
	VALUES(@p_idProducto,@p_idUsuario, @p_movimiento, GETDATE())

END
GO

