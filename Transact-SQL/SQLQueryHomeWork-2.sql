USE VPD_311_Import;
GO

--Для каждого преподавателя вывести количество дисциплин, которые он может читать;

SELECT 
[Фамилия] = last_name,
[Количество дисциплин] = COUNT(discipline_id)
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE teacher_id = teacher
AND discipline_id = discipline
GROUP BY last_name
;