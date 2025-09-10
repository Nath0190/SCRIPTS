USE [Prueba]
GO

/****** Object:  StoredProcedure [dbo].[sp_sesion]    Script Date: 10/09/2025 08:45:26 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_sesion] (
	--@p_idUsuario int,
	@p_correo varchar(50),
	@p_contrasena varchar(25)	
) AS
BEGIN
	SELECT 
		Per.idModulo, Per.permiso, M.nombreModulo
	FROM Rel_Rol_Usuario Per 
		INNER JOIN Modulo M ON M.idModulo = Per.idModulo
		INNER JOIN Usuario U ON U.idUsuario = Per.idUsuario
	WHERE U.estatus=1 AND correo=@p_correo  AND contrasena = @p_contrasena
	-- U.idUsuario =@p_idUsuario AND	
END
GO

