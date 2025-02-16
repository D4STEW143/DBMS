USE VPD_311_SQL_AllInOne;
GO

INSERT Directions
		(direction_id, direction_name)
VALUES	(1,			   N'Разработка программного обеспечения'),
		(2,			   N'Сетевые технологии и сисиемное администрирование'),
		(3,			   N'Комьютерная графиика и дизайн');
GO

SELECT * FROM Directions;