USE VPD_311_Import;
SET DATEFIRST 1;
GO

CREATE PROCEDURE sp_SetAllDaysOff @year AS SMALLINT
AS
BEGIN
	EXEC sp_SetDaysOFF N'Нов%', @year;
	EXEC sp_SetDaysOFF N'23%', @year;
	EXEC sp_SetDaysOFF N'8%', @year;
	EXEC sp_SetDaysOFF N'Пасха%', @year;
	EXEC sp_SetDaysOFF N'Май%', @year;
	EXEC sp_SetDaysOFF N'Лет%', @year;
END