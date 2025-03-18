USE VPD_311_Import;
SET DATEFIRST 1;
GO

PRINT dbo.GetNewYearHolidaysStart(2025);
PRINT dbo.GetSummerHolidaysStart(2023);
PRINT DATENAME(WEEKDAY, dbo.GetSummerHolidaysStart(2023));

--DECLARE @year AS SMALLINT = 2000;
--WHILE @year < 2050
--
--BEGIN
--	PRINT @year;
--	PRINT dbo.GetEasterDate(@year);
--	PRINT N'==============================';
--	SET @year+=1;
--END

--PRINT N'==============================';
--PRINT N'Function';
--PRINT dbo.GetHolidaysStartDate(N'Лет%', 2025);
--PRINT N'==============================';
--PRINT N'Procedure';
--EXEC sp_GetHolidaysStartDate N'Лет%', 2025;
--EXEC sp_SetDaysOFF N'Лет%', 2025
PRINT N'==============================';
EXEC sp_setAllDaysOff 2025;
SELECT [date], holiday_name FROM DaysOFF JOIN Holidays ON (holiday = holiday_id);