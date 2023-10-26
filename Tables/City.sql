CREATE TABLE City(
	CityId INT IDENTITY PRIMARY KEY,
	CityName varchar(30) NOT NULL,
	Coordinates nvarchar(MAX),
	CountryID INT FOREIGN KEY REFERENCES Country(CountryId),
	StateID INT FOREIGN KEY REFERENCES State(StateId)
)

/*
INSERT INTO City(CityName, DialingCode) 
VALUES
	('Kathmandu', 977, 48),
	('Moscow', 7),
	('Islamabad', 92),
	('Lahore', 92),
	('Dhaka', 880),
	('Thimphu', 975),
	('Ottawa', 1),
	('Kabul', 93),
	('Colombo', 94)*/

INSERT INTO City (CityName, CountryID, StateID)
VALUES
('Mumbai', 75, (SELECT StateID FROM State WHERE StateName = 'Maharashtra')),
('Delhi', 75, (SELECT StateID FROM State WHERE StateName = 'Delhi')),
('Bengaluru', 75, (SELECT StateID FROM State WHERE StateName = 'Karnataka')),
('Ahmedabad', 75, (SELECT StateID FROM State WHERE StateName = 'Gujarat')),
('Chennai', 75, (SELECT StateID FROM State WHERE StateName = 'Tamil Nadu')),
('Kolkata', 75, (SELECT StateID FROM State WHERE StateName = 'West Bengal')),
('Rajkot', 75, (SELECT StateID FROM State WHERE StateName = 'Gujarat')),
('Surat', 75, (SELECT StateID FROM State WHERE StateName = 'Gujarat')),
('Morbi', 75, (SELECT StateID FROM State WHERE StateName = 'Gujarat')),
('Chandigarh', 75, (SELECT StateID FROM State WHERE StateName = 'Chandigarh')),
('Hyderabad', 75, (SELECT StateID FROM State WHERE StateName = 'Telangana')),
('Jaipur', 75, (SELECT StateID FROM State WHERE StateName = 'Rajasthan')),
('Pune', 75, (SELECT StateID FROM State WHERE StateName = 'Maharashtra')),
('Mysuru', 75, (SELECT StateID FROM State WHERE StateName = 'Karnataka')),
('Ahmednagar', 75, (SELECT StateID FROM State WHERE StateName = 'Maharashtra')),
('Varanasi', 75, (SELECT StateID FROM State WHERE StateName = 'Uttar Pradesh')),
('Indore', 75, (SELECT StateID FROM State WHERE StateName = 'Madhya Pradesh')),
('Kanpur', 75, (SELECT StateID FROM State WHERE StateName = 'Uttar Pradesh'));



	


SELECT * FROM City
SELECT * FROM Country

ALTER TABLE City
ADD StateID VARCHAR(50) FOREIGN KEY REFERENCES State(StateName)

EXEC sp_RENAME 'City.DialingCode', 'Countr7yID', 'COLUMN';

ALTER TABLE City
DROP COLUMN StateID


DROP TABLE City
