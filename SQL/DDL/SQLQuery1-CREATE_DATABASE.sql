USE master;
GO

CREATE DATABASE VPD_311_SQL
ON --���������� ��������� ����� ��
(
	NAME		= VPD_311_SQL,
	FILENAME	= 'D:\SQL2022\SQL22\MSSQL16.MSSQLSERVER\MSSQL\DATA\VPD_311_sql.mdf',
	SIZE		= 8MB,
	MAXSIZE		= 500MB,
	FILEGROWTH	= 8MB
)
LOG ON --���������� ��������� ������� ��
(
	NAME		= VPD_311_SQL_Log,
	FILENAME	= 'D:\SQL2022\SQL22\MSSQL16.MSSQLSERVER\MSSQL\DATA\VPD_311_SQL_log.ldf',
	SIZE		= 8MB,
	MAXSIZE		= 500MB,
	FILEGROWTH	= 8MB
)
GO