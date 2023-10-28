CREATE TABLE Admin(
	AdminId INT IDENTITY PRIMARY KEY,
	Name VARCHAR(30) NOT NULL,
	CountryID INT FOREIGN KEY REFERENCES Country(CountryId),
	StateID INT FOREIGN KEY REFERENCES State(stateId),
	CityID INT FOREIGN KEY REFERENCES City(CityId),
	DialingCode INT NOT NULL ,
	Phone VARCHAR(10) NOT NULL CHECK (LEN(Phone) = 10 AND Phone LIKE '[6-9]%' AND Phone NOT LIKE '%[^0-9]%'),
	Email VARCHAR(30 ) NOT NULL UNIQUE CHECK (
		Email LIKE '%___@___%.__%' AND
			LEN(SUBSTRING(Email, 1, CHARINDEX('@', Email) - 1)) >= 3 AND
			LEN(SUBSTRING(Email, CHARINDEX('@', Email) + 1, CHARINDEX('.', Email) - CHARINDEX('@', Email) - 1)) >= 3 AND
			LEN(SUBSTRING(Email, CHARINDEX('.', Email) + 1, LEN(Email) - CHARINDEX('.', Email))) >= 2
		),
	Password VARCHAR(16) NOT NULL CHECK (LEN(Password) >= 8 AND LEN(Password) <= 16),
	ConfirmPassword VARCHAR(16) NOT NULL,
	CONSTRAINT CK_ConfirmPassword CHECK (ConfirmPassword = Password),
    LastLogin DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	FailedLoginAttempts INT DEFAULT 0,
	isActive BIT DEFAULT 1,
	CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(),
)

INSERT INTO Admin (Name, Email, CountryID, StateID, CityID, DialingCode, Phone, Password, ConfirmPassword)
VALUES ('Prashant Rai', 'prashantrai@gmail.com', 75, 7, 9, 91, '9841232569', 'admin123', 'admin123');


SELECT * FROM Admin

UPDATE Admin
SET Phone = 7359030960
WHERE Password = 'admin123'


DROP TABLE Admin






