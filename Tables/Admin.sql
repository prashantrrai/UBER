CREATE TABLE Admin(
	AdminId INT IDENTITY PRIMARY KEY,
	Name VARCHAR(30) NOT NULL,
	DialingCode INT FOREIGN KEY REFERENCES Country(DialingCode),
	--Phone VARCHAR(10) NOT NULL CHECK ((LEN(Phone) = 10) AND (Phone >= CHAR(48) AND Phone <= CHAR(57)) AND (Phone LIKE '[6-9]%')),
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

INSERT INTO Admin (Name, Email, DialingCode, Phone, Password, ConfirmPassword)
VALUES ('Prashant Rai', 'prashantrai@gmail.com', 91, '9841232569', 'admin123', 'admin123');
SELECT * FROM Admin


DROP TABLE Admin
/*SELECT ASCII(1);
SELECT CHAR(57);*/




--SP for Admin Login

CREATE PROCEDURE spAuthentication
    @Email VARCHAR(30),
    @Password VARCHAR(16),
    @ConfirmPassword VARCHAR(16)
AS
BEGIN
    IF @Email IS NULL OR @Email NOT LIKE '%_@%_%.%__%'
    BEGIN
        RAISERROR('Invalid Email Format', 10, 1);
        RETURN;
    END

	IF NOT EXISTS (
		SELECT 1 FROM Admin WHERE Email = @Email
	)
	BEGIN
		RAISERROR('Email not found in our records.', 10, 5)
		RETURN;
	END

    IF LEN(@Password) < 8
    BEGIN
        RAISERROR('Password must be at least 8 characters long.', 10, 2);
        RETURN;
    END

    IF @Password <> @ConfirmPassword
    BEGIN
        RAISERROR('Password and ConfirmPassword do not match.', 10, 3);
        RETURN;
    END

	IF NOT EXISTS(
		SELECT 1 FROM Admin WHERE Password = @Password
	)
	BEGIN
		RAISERROR ('Password Not Matching with our Records', 10,6)
		RETURN;
	END

    RAISERROR('Login Authentication Successful', 0, 4);
END

EXEC spAuthentication @Email = 'prashantrai@gmail.com', @Password = 'admin123', @ConfirmPassword = 'admin123';


DROP PROCEDURE spAuthentication


