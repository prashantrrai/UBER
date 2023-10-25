
-- Stored Procedure for Admin Login
CREATE PROCEDURE AdminLogin 
	@Email NVARCHAR(30), 
	@Password NVARCHAR(16)
WITH ENCRYPTION
AS
BEGIN
    DECLARE @AdminId INT;

    -- Check if the user with the provided email and password exists
    SELECT @AdminId = AdminId
    FROM Admin
    WHERE Email = @Email AND Password = @Password;

    IF @AdminId IS NOT NULL
    BEGIN
        SELECT 'Login Successful.' AS Result, @AdminId AS AdminID;
    END
    ELSE
    BEGIN
        SELECT 'Invalid Email or Password.' AS Result,  @AdminId AS AdminID;
    END
END;


EXEC AdminLogin @Email = 'prashantrai@gmail.com', @Password = 'admin123';




/*
ALTER PROC [dbo].[AdminLogin]
@Email VARCHAR(30),
@Password VARCHAR(16)
WITH ENCRYPTION
*/

DROP PROCEDURE AdminLogin

SELECT * FROM Admin
sp_helptext AdminLogin