USE VPD_311_Import;
SET DATEFIRST 1;
GO

--INSERT Groups (group_id, group_name, direction)
--VALUES (12, N'Stacionar', 1)
--GO
--SELECT * FROM Groups

DECLARE @group AS INT = (SELECT group_id FROM Groups WHERE group_name = N'Stacionar');
DECLARE @discipline AS SMALLINT = (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE N'Объектно%');
DECLARE @number_of_lessons AS TINYINT = (SELECT number_of_lessons FROM Disciplines WHERE discipline_id = @discipline);
DECLARE @teacher AS SMALLINT = (SELECT teacher_id FROM Teachers WHERE first_name = N'Олег');
DECLARE @start_date AS DATE = N'2024-09-02';
DECLARE @date AS DATE = @start_date;
DECLARE @time AS TIME(0) = N'12:00';

PRINT(@group);
PRINT(@discipline);
PRINT(@number_of_lessons)
PRINT(@teacher);
PRINT(@start_date);
PRINT(@time);
PRINT(DATENAME(WEEKDAY, @date));
PRINT('--------------------------------------');

DECLARE @lesson_number AS TINYINT = 0;
WHILE (@lesson_number < @number_of_lessons)
BEGIN

END
