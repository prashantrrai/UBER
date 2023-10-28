--SP for Admin Login

CREATE PROCEDURE spAuthentication
    @Email VARCHAR(30),
	@Phone VARCHAR(10),
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
		RAISERROR('Email not found in our records.', 10, 2)
		RETURN;
	END


	IF @Phone IS NULL OR @Phone NOT LIKE '[6-9]%' OR @Phone LIKE '%[^0-9]%' OR LEN(@Phone) <> 10
    BEGIN
        RAISERROR('Invalid Phone Number', 10, 3);
        RETURN;
    END

	IF NOT EXISTS (
		SELECT 1 FROM Admin WHERE Phone = @Phone
	)
	BEGIN
		RAISERROR('Phone number not found in our records.', 10, 4)
		RETURN;
	END



    IF LEN(@Password) < 8
    BEGIN
        RAISERROR('Password must be at least 8 characters long.', 10, 5);
        RETURN;
    END

    IF @Password <> @ConfirmPassword
    BEGIN
        RAISERROR('Password and ConfirmPassword do not match.', 10, 6);
        RETURN;
    END

	IF NOT EXISTS(
		SELECT 1 FROM Admin WHERE Password = @Password
	)
	BEGIN
		RAISERROR ('Password Not Matching with our Records', 10,7)
		RETURN;
	END

    RAISERROR('Login Authentication Successful', 0, 8);
END

EXEC spAuthentication @Email = 'prashantrai@gmail.com', @Password = 'admin123', @ConfirmPassword = 'admin123', @Phone = 7359030960;


DROP PROCEDURE spAuthentication