--��� ������� ����������� ���������� ����� ���������� �������;
USE VPD_311_Import;
GO

SELECT 
	[�����������] = direction_name,
	[���������� �������] = COUNT(discipline) * COUNT(number_of_lessons)
FROM Directions, Disciplines, DisciplinesDirectionsRelation
WHERE direction = direction_id
AND discipline = discipline_id
GROUP BY direction_name;
