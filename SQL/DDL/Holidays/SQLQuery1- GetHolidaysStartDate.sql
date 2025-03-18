USE VPD_311_Import;
SET DATEFIRST 1;
GO

--ALTER FUNCTION GetHolidaysStartDate(@holiday_name AS NVARCHAR(150), @year AS SMALLINT) RETURNS DATE
ALTER PROCEDURE sp_GetHolidaysStartDate (@holiday_name AS NVARCHAR(150), @year AS SMALLINT)
AS
BEGIN
	--PRINT N'GetHolidaysStartDate';
	DECLARE 
	@holiday_id AS TINYINT = (SELECT holiday_id FROM Holidays WHERE holiday_name LIKE @holiday_name),
	@duration AS TINYINT = (SELECT duration FROM Holidays WHERE holiday_name LIKE @holiday_name),
	@month AS TINYINT = (SELECT [month] FROM Holidays WHERE holiday_name LIKE @holiday_name),
	@day AS TINYINT = (SELECT [day] FROM Holidays WHERE holiday_name LIKE @holiday_name);

	--PRINT @holiday_id;
	--PRINT @duration;
	--PRINT @month;
	--PRINT @day;

	DECLARE @start_date AS DATE = 
	(
		CASE
			WHEN @holiday_id = 1 THEN dbo.GetNewYearHolidaysStart(@year)
			WHEN @holiday_id = 4 THEN dbo.GetEasterDate(@year)
			WHEN @holiday_id = 6 THEN dbo.GetSummerHolidaysStart(@year)
			WHEN @month != 0 AND @day != 0 THEN DATEFROMPARTS(@year, @month, @day)
		END
	)
	PRINT @start_date;
	--RETURN @start_date
	--PRINT N'------------------------------------';
END