CREATE DATABASE UBER;
USE UBER;
DROP DATABASE UBER;

CREATE TABLE Country(
	CountryName varchar(30) NOT NULL,
	Currency varchar(20) NOT NULL,
	CountryCode int PRIMARY KEY,
	Flag nvarchar(MAX)
)
DROP TABLE Country

INSERT INTO Country 
VALUES
	('Afghanistan', 'Afghani', 93, 'https://www.worldometers.info/img/flags/af-flag.gif'),	
	('Canada', 'Canadian dollar', 1, 'https://www.worldometers.info/img/flags/ca-flag.gif'),
	('India', 'Indian Rupee', 91, 'https://www.worldometers.info/img/flags/in-flag.gif'),
	('Pakistan', '	Pakistani Rupee', 92, 'https://www.worldometers.info/img/flags/pk-flag.gif'),
	('Bangladesh', 'Taka', 880, 'https://www.worldometers.info/img/flags/bg-flag.gif'),
	('Sri Lanka', 'Sri Lankan Rupee', 94, 'https://www.worldometers.info/img/flags/ce-flag.gif'),
	('Bhutan', 'Ngultrum', 975, 'https://www.worldometers.info/img/flags/bt-flag.gif'),
	('Nepal', 'Nepalese Rupee', 977, 'https://www.worldometers.info/img/flags/np-flag.gif'),
	('Russia', 'Ruble', 7, 'https://www.worldometers.info/img/flags/rs-flag.gif')

SELECT * FROM Country