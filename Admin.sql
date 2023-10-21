 CREATE DATABASE EBER; --creating database

 USE master; --using database
 USE EBER;
 DROP DATABASE EBER; -- droping database

BACKUP DATABASE EBER
TO DISK = 'C:\Users\sscss\Documents' --taking backup of database





CREATE TABLE Admin (
    Id INT IDENTITY(1,1) PRIMARY KEY,

    name varchar(255) NOT NULL,

	Email varchar(255) NOT NULL,
	CONSTRAINT UQ_UniqueEmail UNIQUE (Email),
	CONSTRAINT CK_ValidEmailFormat CHECK (
		Email LIKE '%___@__%.__%' AND
			LEN(SUBSTRING(Email, 1, CHARINDEX('@', Email) - 1)) >= 3 AND
			LEN(SUBSTRING(Email, CHARINDEX('@', Email) + 1, CHARINDEX('.', Email) - CHARINDEX('@', Email) - 1)) >= 2 AND
			LEN(SUBSTRING(Email, CHARINDEX('.', Email) + 1, LEN(Email) - CHARINDEX('.', Email))) >= 2
		),
		
	CountryCode varchar(7) NOT NULL,
    --Phone nvarchar(10) NOT NULL,
	Phone bigint NOT NULL,
	CONSTRAINT CK_ValidPhoneNumber CHECK (phone >= 1000000000 AND phone <= 9999999999),

	--CONSTRAINT CK_ValidPhoneNumber CHECK (Phone >= 1000000000 AND Phone <= 9999999999),

    Password varchar(255) NOT NULL,
	CONSTRAINT CK_MinPasswordLength CHECK (LEN(Password) >= 8),

    ConfirmPassword varchar(255) NOT NULL,
	CONSTRAINT CK_PasswordMatch CHECK (Password = ConfirmPassword),

    CreatedAt datetime2 NOT NULL DEFAULT GETDATE(),
    --createdBy NVARCHAR(255) NOT NULL,

    UpdatedAt datetime2 NOT NULL DEFAULT GETDATE(),
    --updatedBy NVARCHAR(255) NOT NULL,

    isActive BIT NOT NULL DEFAULT 1,
    CONSTRAINT CK_IsActive CHECK (isActive IN (0, 1))
); 








INSERT INTO Admin (Name, Email, CountryCode, Phone, Password, ConfirmPassword)
VALUES ('Prashant Rai', 'prashantrai@gmail.com', '+91', '9846564310', 'admin123', 'admin123');

UPDATE Admin
SET CountryCode = '+91'
WHERE Id = 1;


SELECT * FROM Admin; 

DROP TABLE Admin; --droping table

DBCC CHECKIDENT('Admin', RESEED, 1);


--ALTER TABLE Admin
--ADD IsActive BIT NOT NULL CONSTRAINT DF_IsActive DEFAULT 1,
--CONSTRAINT CK_IsActive CHECK (isActive IN (0, 1));

--ALTER TABLE Admin ADD CountryCode varchar(7);

ALTER TABLE Admin
DROP CONSTRAINT CK_ValidPhoneNumber;

ALTER TABLE Admin
ALTER  COLUMN Phone bigint;

