CREATE DATABASE UBER;
USE UBER;
DROP DATABASE UBER;

CREATE TABLE Country(
	CountryName varchar(30) NOT NULL UNIQUE,
	CountryCode VARCHAR(10) NOT NULL UNIQUE,
	Currency varchar(20) NOT NULL,
	DialingCode INT PRIMARY KEY,
	TimeZone nvarchar(MAX),
	Flag nvarchar(MAX)
)
DROP TABLE Country

INSERT INTO Country (CountryCode, CountryName, Currency, DialingCode, Flag)
VALUES
	('AFG', 'Afghanistan', 'Afghani', 93, 'https://www.worldometers.info/img/flags/af-flag.gif'),	
	('CAN', 'Canada', 'Canadian dollar', 1, 'https://www.worldometers.info/img/flags/ca-flag.gif'),
	('IND', 'India', 'Indian Rupee', 91, 'https://www.worldometers.info/img/flags/in-flag.gif'),
	('PAK', 'Pakistan', 'Pakistani Rupee', 92, 'https://www.worldometers.info/img/flags/pk-flag.gif'),
	('BGD', 'Bangladesh', 'Taka', 880, 'https://www.worldometers.info/img/flags/bg-flag.gif'),
	('LNK', 'Sri Lanka', 'Sri Lankan Rupee', 94, 'https://www.worldometers.info/img/flags/ce-flag.gif'),
	('BTN', 'Bhutan', 'Ngultrum', 975, 'https://www.worldometers.info/img/flags/bt-flag.gif'),
	('NP', 'Nepal', 'Nepalese Rupee', 977, 'https://www.worldometers.info/img/flags/np-flag.gif'),
	('RU', 'Russia', 'Ruble', 7, 'https://www.worldometers.info/img/flags/rs-flag.gif')

SELECT * FROM Country