USE VPD_311_Import;
GO

--�������� ���������� � ���� ������

--INSERT Students(last_name, first_name, middle_name, birth_date, email, phone, photo, [group])
--VALUES 
--(N'��������',N'�������',N'������������', '1979-10-02', 'kisly_vd42@top-academy.ru', 'NULL', 'NULL', 11),
--(N'�������',N'���������',N'������������', '1995-05-12', 'zarub_xz91@top-academy.ru', 'NULL', 'NULL', 11),
--(N'�����',N'�����',N'�������������', '1989-01-07', 'lisin_sw23@top-academy.ru', 'NULL', 'NULL', 11),
--(N'����',N'���������',N'����������', '1987-05-11', 'yashi_wx10@top-academy.ru', 'NULL', 'NULL', 11),
--(N'�����',N'�������',N'����������', '1997-07-10', 'lapin_qh81@top-academy.ru', 'NULL', 'NULL', 11),
--(N'������',N'����',N'�������', '2003-08-26', 'Shulg_cv94@top-academy.ru', 'NULL', 'NULL', 11),
--(N'����',N'�����',N'������������', '1985-03-17', 'Yuhno_zy99@top-academy.ru', 'NULL', 'NULL', 11),
--(N'������',N'�����',N'����������', '1997-06-22', 'almae_wz17@top-academy.ru', 'NULL', 'NULL', 11),
--(N'�����',N'�������',N'���������', '1989-12-12', 'kosov_yt40@top-academy.ru', 'NULL', 'NULL', 11),
--(N'�������',N'�������',N'����������', '1985-01-09', 'Deryu_wm14@top-academy.ru', 'NULL', 'NULL', 11),
--(N'�������',N'���������',N'�������������', '1976-09-01', 'Kudin_jt11@top-academy.ru', 'NULL', 'NULL', 11)
--GO

SELECT * FROM Students
WHERE [group] = 11
