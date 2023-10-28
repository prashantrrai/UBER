CREATE PROCEDURE Validations
	@Email VARCHAR(50),
	@Phone VARCHAR(10),
	@Password VARCHAR(16),
	@ConfirmPassword VARCHAR(16)
AS
BEGIN
	
	IF @Email NOT LIKE '%___@%___%.%__%' 
	OR	NOT (
			LEN(SUBSTRING(@Email, 1, CHARINDEX('@', @Email) - 1)) >= 3 AND
			LEN(SUBSTRING(@Email, CHARINDEX('@', @Email) + 1, CHARINDEX('.', @Email) - CHARINDEX('@', @Email) - 1)) >= 3 AND
			LEN(SUBSTRING(@Email, CHARINDEX('.', @Email) + 1, LEN(@Email) - CHARINDEX('.', @Email))) >= 2
		)
	BEGIN
		RAISERROR('Invalid Email Format', 10, 1);
        RETURN;
	END

	IF @Phone NOT LIKE '[6-9]%' OR @Phone LIKE '%[^0-9]%' OR LEN(@Phone) <> 10
    BEGIN
        RAISERROR('Invalid Phone Number', 10, 2);
        RETURN;
    END

	IF LEN(@Password) < 8
    BEGIN
        RAISERROR('Password must be at least 8 characters long', 10, 3);
        RETURN;
    END

	IF @Password <> @ConfirmPassword
	BEGIN
		RAISERROR ('Password and ConfirmPassword do not match', 10,4);
	END

END

EXEC Validations @Email = 'pr@gmail.com', @Password = 'admin123', @ConfirmPassword = 'admin123', @Phone = 7359030960;

DROP PROC Validations