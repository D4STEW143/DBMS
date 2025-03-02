USE VPD_311_Import;
GO

--Добавить участников в свою группу

--INSERT Students(last_name, first_name, middle_name, birth_date, email, phone, photo, [group])
--VALUES 
--(N'Кисляков',N'Дмитрий',N'Вячеславович', '1979-10-02', 'kisly_vd42@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Зарубин',N'Александр',N'Вячеславович', '1995-05-12', 'zarub_xz91@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Лисин',N'Роман',N'Александрович', '1989-01-07', 'lisin_sw23@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Яшин',N'Александр',N'Николаевич', '1987-05-11', 'yashi_wx10@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Лапин',N'Дмитрий',N'Евгеньевич', '1997-07-10', 'lapin_qh81@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Шульга',N'Егор',N'Юрьевич', '2003-08-26', 'Shulg_cv94@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Юхно',N'Павел',N'Вячеславович', '1985-03-17', 'Yuhno_zy99@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Алмаев',N'Эмиль',N'Равильевич', '1997-06-22', 'almae_wz17@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Косов',N'Алексей',N'Сергеевич', '1989-12-12', 'kosov_yt40@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Дерюгин',N'Евгений',N'Евгеньевич', '1985-01-09', 'Deryu_wm14@top-academy.ru', 'NULL', 'NULL', 11),
--(N'Кудинов',N'Александр',N'Александрович', '1976-09-01', 'Kudin_jt11@top-academy.ru', 'NULL', 'NULL', 11)
--GO

SELECT * FROM Students
WHERE [group] = 11
