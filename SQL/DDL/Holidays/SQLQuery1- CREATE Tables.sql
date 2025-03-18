USE VPD_311_Import;
GO

CREATE TABLE Holidays 
(
	holiday_id TINYINT PRIMARY KEY,
	holiday_name NVARCHAR(150) NOT NULL,
	duration TINYINT NOT NULL,
	[month] TINYINT,
	[day] TINYINT
);

CREATE TABLE DaysOFF
(
	[date] DATE PRIMARY KEY,
	holiday TINYINT NOT NULL CONSTRAINT FK_DO_Holidays FOREIGN KEY REFERENCES Holidays(holiday_id)
);

GO

INSERT Holidays(holiday_id, holiday_name, duration, [month], [day])
VALUES 
	(1, N'Новогодник каникулы', 14, NULL, NULL),
	(2, N'23 Февраля', 3, 2, 23),
	(3, N'8 Марта', 3, 3, 8),
	(4, N'Пасха', 3 , NULL, NULL),
	(5, N'Майские праздники', 10, 5, 1),
	(6, N'Летние каникулы', 14, NULL, NULL)

SELECT * FROM Holidays;