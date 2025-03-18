--SetDaysOFF
USE VPD_311_Import;
SET DATEFIRST 1;
GO

ALTER PROCEDURE sp_SetDaysOFF (@holiday_name AS NVARCHAR(150), @year AS SMALLINT)
AS
BEGIN
	DECLARE @holiday_id AS TINYINT = (SELECT holiday_id FROM Holidays WHERE holiday_name LIKE @holiday_name);
	DECLARE @holiday AS NVARCHAR(150) = (SELECT holiday_name FROM Holidays WHERE holiday_name LIKE @holiday_name);
	DECLARE @duration AS TINYINT = (SELECT duration FROM Holidays WHERE holiday_id = @holiday_id);
	DECLARE @start_date AS DATE = dbo.GetHolidaysStartDate(@holiday_name, @year);
	DECLARE @day AS TINYINT = 0;
	DECLARE @date AS DATE = @start_date;

	PRINT @holiday_id;
	PRINT @duration;
	PRINT @start_date;
	PRINT @holiday
	--PRINT @date;
	--PRINT @day;

	WHILE @day < @duration
	BEGIN
		PRINT @date;
		IF NOT EXISTS (SELECT [date] FROM DaysOFF WHERE [date] = @date)
		BEGIN
			INSERT DaysOFF VALUES (@date, @holiday_id)
		END
		SET @date = DATEADD(DAY, 1, @date);
		SET @day += 1;
	END
END