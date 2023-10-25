
--Stored procedures are widely used to encapsulate business logic, enhance security, and improve code reusability.


USE UBER


CREATE PROCEDURE GetDriverByID
@DriverId INT
AS
BEGIN
	SELECT * FROM Drivers WHERE DriverId = @DriverId;
END


EXEC GetDriverByID @DriverId = 4

DROP PROC GetDriverByID