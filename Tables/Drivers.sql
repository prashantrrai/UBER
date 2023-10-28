CREATE TABLE Drivers(
	DriverId int IDENTITY PRIMARY KEY,
	DriverName VARCHAR(30) NOT NULL,
	DriverEmail VARCHAR(30) NOT NULL UNIQUE,
	DriverPhone VARCHAR(10) NOT NULL,
	ProfileImage NVARCHAR(MAX) DEFAULT 'https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg',
	CountryID INT FOREIGN KEY REFERENCES Country(CountryId),
	StateID INT FOREIGN KEY REFERENCES State(StateId),
	CityID INT FOREIGN KEY REFERENCES City(CityId),
	Driver_License VARCHAR(16) NOT NULL,
	Car_Number VARCHAR(12) NOT NULL,
    Car_Model VARCHAR(20) NOT NULL,
    Rating DECIMAL(2, 1) CHECK (Rating >= 1.0 AND Rating <= 5.0),
	Driver_Status BIT DEFAULT 0,
	VehicleID INT FOREIGN KEY REFERENCES Vehicle(VehicleId) DEFAULT NULL,
	Assign BIT DEFAULT 0
)

INSERT INTO Drivers (DriverName, DriverEmail, DriverPhone, CountryID, StateID, CityID, Driver_License, Car_Number, Car_Model, Rating, VehicleID)
VALUES
    ('Nikhar Hirpara', 'nikhar@gmail.com', '1234567890', 75, 7, 9,'OT112673', 'OT12KJ3456', 'Cruz', 4.75, 1);

SELECT * FROM Drivers


/*INSERT INTO Drivers (DriverName, DriverEmail, CountryID, DriverPhone, StateID, CityID, Driver_License, Car_Number, Car_Model, Rating, VehicleID)
VALUES
    ('Ahmed', 'ahmed@email.com', 91, '9876543210', 7, 9, 'AHM123', 'Sedan', 4.6, 1),
    ('Bala', 'bala@email.com', 91, '9876543210', 7, 9, 'BLR456', 'SUV', 4.5, 2),
    ('Chitra', 'chitra@email.com', 91, '9988776655', 7, 9, 'CHN789', 'Luxury', 4.7, 3),
    ('Dilhan', 'dilhan@email.com', 94, '1122334455', 9, 8, 'COL901', 'Sedan', 4.6, 1),
    ('Esha', 'esha@email.com', 91, '5544332211', 7, 9, 'DLH234', 'Sedan', 4.5, 1),
    ('Farid', 'farid@email.com', 880, '9988776655', 8, 10, 'DHK567', 'SUV', 4.4, 2),
    ('Imran', 'imran@email.com', 92, '9988776655', 11, 12, 'ISB890', 'Auto Rickshaw', 4.2, 4),
    ('Jamal', 'jamal@email.com', 93, '9988776655', 13, 14, 'KBL123', 'Bike', 4.0, 5),
    ('Keshav', 'keshav@email.com', 977, '1122334455', 15, 16, 'KTM678', 'Luxury', 4.8, 3),
    ('Krishna', 'krishna@email.com', 91, '5544332211', 7, 9, 'KOL345', 'Sedan', 4.7, 1),
    ('Laila', 'laila@email.com', 92, '9988776655', 17, 18, 'LHR456', 'SUV', 4.6, 2),
    ('Mukesh', 'mukesh@email.com', 91, '9988776655', 7, 9, 'MRB789', 'Bike', 4.2, 5),
    ('Mikhail', 'mikhail@email.com', 7, '9988776655', 19, 20, 'MRU1111', 'Sedan', 4.8, 1),
    ('Rahul', 'rahul@email.com', 91, '5544332211', 7, 9, 'MUM123', 'Sedan', 4.5, 1),
    ('Sofia', 'sofia@email.com', 1, '1122334455', 21, 22, 'OTW678', 'Auto Rickshaw', 4.2, 4),
    ('Raj', 'raj@email.com', 91, '9988776655', 7, 9, 'RJK123', 'Bike', 4.0, 5),
    ('Samir', 'samir@email.com', 91, '5544332211', 7, 9, 'SRT456', 'Auto Rickshaw', 4.2, 4),
    ('Tenzin', 'tenzin@email.com', 975, '9988776655', 23, 24, 'THP123', 'Bike', 4.1, 5);
	*/


INSERT INTO Drivers (DriverName, DriverEmail, CountryID, DriverPhone, StateID, CityID, Driver_License, Car_Number, Car_Model, Rating, VehicleID)
VALUES
    ('John Smith', 'john@example.com', 1, '1234567890', 1, 1, 'US123', 'Sedan123', 'Sedan', 4.7, 1),
    ('Maria Rodriguez', 'maria@example.com', 1, '9876543210', 1, 2, 'US456', 'SUV456', 'SUV', 4.6, 2),
    ('Luis Martinez', 'luis@example.com', 1, '9988776655', 1, 3, 'US789', 'Luxury789', 'Luxury', 4.8, 3),
    ('Sophia Johnson', 'sophia@example.com', 1, '1122334455', 1, 4, 'US101', 'Sedan101', 'Sedan', 4.5, 1),
    ('James Davis', 'james@example.com', 2, '5544332211', 2, 5, 'CA123', 'SedanCA', 'Sedan', 4.6, 1),
    ('Emma Brown', 'emma@example.com', 2, '9988776655', 2, 6, 'CA456', 'SUVCA', 'SUV', 4.5, 2),
    ('Michael Wilson', 'michael@example.com', 2, '9988776655', 2, 7, 'CA789', 'LuxuryCA', 'Luxury', 4.7, 3),
    ('Olivia Garcia', 'olivia@example.com', 3, '1122334455', 3, 8, 'MX123', 'SedanMX', 'Sedan', 4.6, 1),
    ('William Rodriguez', 'william@example.com', 3, '1234567890', 3, 9, 'MX456', 'SUVMX', 'SUV', 4.5, 2),
    ('Ava Hernandez', 'ava@example.com', 3, '9988776655', 3, 10, 'MX789', 'LuxuryMX', 'Luxury', 4.8, 3),
    ('Alexander Smith', 'alexander@example.com', 4, '5544332211', 4, 11, 'FR123', 'SedanFR', 'Sedan', 4.7, 1),
    ('Oliver Martin', 'oliver@example.com', 4, '9988776655', 4, 12, 'FR456', 'SUVFR', 'SUV', 4.6, 2),
    ('Charlotte Thomas', 'charlotte@example.com', 4, '9988776655', 4, 13, 'FR789', 'LuxuryFR', 'Luxury', 4.5, 3),
    ('Logan Martinez', 'logan@example.com', 5, '1234567890', 5, 15, 'IT456', 'SUVIT', 'SUV', 4.7, 2);


SELECT * FROM Drivers



CREATE VIEW DialingCodeView
AS
SELECT Drivers.*, DialingCode
FROM Drivers
LEFT JOIN
Country ON Drivers.CountryID = Country.CountryId


SELECT * FROM DialingCodeView

DROP TABLE Drivers