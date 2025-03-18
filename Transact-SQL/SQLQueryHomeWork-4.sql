--Для каждого направления подсчитать общее количество занятий;
USE VPD_311_Import;
GO

SELECT 
	[Направление] = direction_name,
	[Количество занятий] = COUNT(discipline) * COUNT(number_of_lessons)
FROM Directions, Disciplines, DisciplinesDirectionsRelation
WHERE direction = direction_id
AND discipline = discipline_id
GROUP BY direction_name;
