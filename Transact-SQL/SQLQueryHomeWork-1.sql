USE VPD_311_Import;
GO


--Подсчитать количество преподавателей по каждой дисциплине
SELECT 
[Направление] = discipline_name,
[Количество преподавателей] = COUNT(teacher_id)
FROM Disciplines, Teachers, TeachersDisciplinesRelation
WHERE discipline_id = discipline
AND teacher_id = teacher
GROUP BY discipline_name
;
