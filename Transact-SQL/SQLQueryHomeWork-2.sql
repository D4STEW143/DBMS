USE VPD_311_Import;
GO

--��� ������� ������������� ������� ���������� ���������, ������� �� ����� ������;

SELECT 
[�������] = last_name,
[���������� ���������] = COUNT(discipline_id)
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE teacher_id = teacher
AND discipline_id = discipline
GROUP BY last_name
;