USE VPD_311_Import;
GO

SELECT 
		[Группа] = group_name,
		[Дисциплина] = discipline_name,
		[Преподаватель] = last_name+' '+first_name+' '+middle_name,
		[День недели] = DATENAME(WEEKDAY, [date]),
		[Дата] = [date],
		[Время] = [time],
		[Статус] = IIF(spent=1, N'Проведено', N'Запланированно')
FROM	Schedule, Groups, Disciplines, Teachers
WHERE	[group] = group_id
AND		discipline = discipline_id
AND		teacher = teacher_id
;