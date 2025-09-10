USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_NuevoProducto]    Script Date: 10/09/2025 08:44:28 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_NuevoProducto](
	@p_estatus int,
	@p_nombre varchar(100),
	@p_cantidad int,
	@p_precio decimal(10,2)
) AS
BEGIN
	
	INSERT INTO Producto  (estatus, nombre, cantidad, precio)
	VALUES(@p_estatus, @p_nombre, @p_cantidad, @p_precio)
	 
	SELECT idProducto = @@IDENTITY
END	
GO

