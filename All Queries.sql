ALTER DATABASE EBER MODIFY NAME = UBER;

USE UBER

CREATE TABLE Country(
	CountryCode int NOT NULL PRIMARY KEY,
	Name varchar(20) NOT NULL,
	Currency nvarchar(20) NOT NULL,
	ShortName varchar(5) NOT NULL,
	Flag nvarchar(MAX)
);


INSERT INTO Country(CountryCode, Name, Currency, ShortName) VALUES
		(1, 'Canada', 'DOllar', 'CAN'),
		(91, 'India', 'INR', 'IN'),
		(92, 'Pakistan', 'PAK RUPEE', 'PAK'),
		(93, 'Bangladesh', 'TAKA', 'BAN')

SELECT * FROM Country;
SELECT * FROM Users;



CREATE TABLE Users (
    Id int IDENTITY PRIMARY KEY,
    Name varchar(20) NOT NULL,
    Email varchar(30) NOT NULL,
    CountryCode int NOT NULL,
    Phone varchar(10) NOT NULL,
    Profile nvarchar(MAX),
	FOREIGN KEY (CountryCode) REFERENCES Country(CountryCode)
)

INSERT INTO Users (Name, Email, CountryCode, Phone) VALUES 
	('Yash Patel', 'yash@gmail.com', '+91', '9898787898'),
	('Mahesh Patel', 'mahesh@gmail.com', '+91', '7890987654'), 
	('Nikhil Panchasara', 'nikhil@gmail.com', '+91', '7890978965'),
	('John Doe', 'johndoe@example.com', '+1', '1234567890'),
    ('Jane Smith', 'janesmith@example.com', '+1', '9876543210');

SELECT COUNT(CountryCode) as CountryCount FROM Users
GROUP BY CountryCode
Having COUNT(CountryCode) > 1

SELECT * FROM Users
INNER JOIN Country  ON Users.CountryCode = Country.CountryCode
GROUP BY Users.CountryCode
Having CountryCode = 91;

SELECT Users.*, Country.Name AS CountryName
FROM Users
LEFT JOIN Country ON Users.CountryCode = Country.CountryCode;

SELECT *
FROM Users
RIGHT JOIN Country ON Users.CountryCode = Country.CountryCode
ORDER BY Country.CountryCode ASC;

SELECT * 
FROM Users 
FULL JOIN Country ON Users.CountryCode = Country.CountryCode;

SELECT COUNT(CountryCode) AS TOTAL, CountryCode
FROM Users
GROUP BY CountryCode;

SELECT Users.*, Country.Name AS CountryName
FROM Users
CROSS JOIN Country;


SELECT  COUNT(CountryCode) AS TotalCountries, CountryCode,
CASE WHEN  COUNT(CountryCode)>3 THEN 'More than 3 countries are there'
	 WHEN COUNT(CountryCode)<3 THEN 'less than 3 countries are there'
	 ELSE 'countries = 3'
END AS 'Remark'
FROM Users
GROUP BY CountryCode;


SELECT * FROM Users A, Users B
WHERE A.CountryCode = B.CountryCode