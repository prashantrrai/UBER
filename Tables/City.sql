CREATE TABLE City(
	CityName varchar(30) PRIMARY KEY,
	Coordinates nvarchar(MAX),
	DialingCode INT FOREIGN KEY REFERENCES Country(DialingCode)
)

INSERT INTO City(CityName, DialingCode) 
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

INSERT INTO City (CityName, DialingCode)
VALUES 
    ('Chandigarh', 91),
    ('Hyderabad', 91),
    ('Jaipur', 91),
    ('Pune', 91),
    ('Mysuru', 91),
    ('Ahmednagar', 91),
    ('Varanasi', 91),
    ('Indore', 91),
    ('Kanpur', 91);


	
DROP TABLE City


SELECT * FROM City
SELECT * FROM Country
