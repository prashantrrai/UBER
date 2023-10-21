CREATE TABLE City(
	CityId int IDENTITY PRIMARY KEY,
	CityName varchar(30) NOT NULL UNIQUE,
	Coordinates nvarchar(MAX),
	CountryID int FOREIGN KEY REFERENCES Country(CountryCode)
)

INSERT INTO City(CityName, CountryID) 
VALUES
	('Mumbai', 91),
	('Delhi', 91),
	('Bengaluru', 91),
	('Ahmedabad', 91),
	('Chennai', 91),
	('Kolkata', 91),
	('Rajkot' ,91),
	('Surat', 91),
	('Kathmandu', 977),
	('Moscow', 7),
	('Islamabad', 92),
	('Lahore', 92),
	('Dhaka', 880),
	('Thimphu', 975),
	('Ottawa', 1),
	('Kabul', 93),
	('Colombo', 94),
	('Morbi', 91)



	


DROP TABLE City
SELECT * FROM City
SELECT * FROM Country
