USE VPD_311_Import;
GO


--���������� ���������� �������������� �� ������ ����������
SELECT 
[�����������] = discipline_name,
[���������� ��������������] = COUNT(teacher_id)
FROM Disciplines, Teachers, TeachersDisciplinesRelation
WHERE discipline_id = discipline
AND teacher_id = teacher
GROUP BY discipline_name
;
