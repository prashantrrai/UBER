CREATE PROCEDURE GetUserByID
AS
BEGIN
    SELECT * FROM Users WHERE UserId = 1;
END

EXEC GetUserByID

DROP PROC GetUserByID