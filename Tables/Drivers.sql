CREATE TABLE Drivers(
	DriverId int IDENTITY PRIMARY KEY,
	DriverName varchar(30) NOT NULL,
	DriverEmail varchar(30) NOT NULL UNIQUE,
	DialingCode int FOREIGN KEY REFERENCES Country(DialingCode),
	DriverPhone varchar(10) NOT NULL,
	ProfileImage nvarchar(MAX) DEFAULT 'https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg',
	City varchar(30) FOREIGN KEY REFERENCES City(CityName),
	Driver_License VARCHAR(16) NOT NULL,
	Car_Number varchar(12) NOT NULL,
    Car_Model varchar(20) NOT NULL,
    Rating DECIMAL(2, 1) CHECK (Rating >= 1.0 AND Rating <= 5.0),
	Driver_Status BIT DEFAULT 0,
	Vehicle_Type varchar(30) FOREIGN KEY REFERENCES Vehicle(VehicleName) DEFAULT NULL,
	Assign BIT DEFAULT 0
)

INSERT INTO Drivers (DriverName, DriverEmail, DialingCode, DriverPhone, City, Driver_License, Car_Number, Car_Model, Rating, Vehicle_Type)
VALUES
    ('John Doe', 'johndoe@email.com', +1, '1234567890', 'Ottawa','OT112673', 'OT12KJ3456', 'Cruz', 4.75, 'Sedan');

SELECT * FROM Drivers


-- Drivers in various cities
INSERT INTO Drivers (DriverName, DriverEmail, DialingCode, DriverPhone, City, Driver_License, Car_Number, Car_Model, Rating, Vehicle_Type)
VALUES
    ('Ahmed', 'ahmed@email.com', 91, '9876543210', 'Ahmedabad', 'IN112233', 'AHM123', 'Sedan', 4.6, 'Sedan'),
    ('Bala', 'bala@email.com', 91, '9876543210', 'Bengaluru', 'IN223344', 'BLR456', 'SUV', 4.5, 'SUV'),
    ('Chitra', 'chitra@email.com', 91, '9988776655', 'Chennai', 'IN334455', 'CHN789', 'Luxury', 4.7, 'Luxury'),
    ('Dilhan', 'dilhan@email.com', 94, '1122334455', 'Colombo', 'LK667788', 'COL901', 'Sedan', 4.6, 'Sedan'),
    ('Esha', 'esha@email.com', 91, '5544332211', 'Delhi', 'IN445566', 'DLH234', 'Sedan', 4.5, 'Sedan'),
    ('Farid', 'farid@email.com', 880, '9988776655', 'Dhaka', 'BD556677', 'DHK567', 'SUV', 4.4, 'SUV'),
    ('Imran', 'imran@email.com', 92, '9988776655', 'Islamabad', 'PK778899', 'ISB890', 'Auto Rickshaw', 4.2, 'Auto Rickshaw'),
    ('Jamal', 'jamal@email.com', 93, '9988776655', 'Kabul', 'AF889900', 'KBL123', 'Bike', 4.0, 'Bike'),
    ('Keshav', 'keshav@email.com', 977, '1122334455', 'Kathmandu', 'NP667788', 'KTM678', 'Luxury', 4.8, 'Luxury'),
    ('Krishna', 'krishna@email.com', 91, '5544332211', 'Kolkata', 'IN445566', 'KOL345', 'Sedan', 4.7, 'Sedan'),
    ('Laila', 'laila@email.com', 92, '9988776655', 'Lahore', 'PK556677', 'LHR456', 'SUV', 4.6, 'SUV'),
    ('Mukesh', 'mukesh@email.com', 91, '9988776655', 'Morbi', 'IN667788', 'MRB789', 'Bike', 4.2, 'Bike'),
    ('Mikhail', 'mikhail@email.com', 7, '9988776655', 'Moscow', 'RU778899', 'MRU1111', 'Sedan', 4.8, 'Sedan'),
    ('Rahul', 'rahul@email.com', 91, '5544332211', 'Mumbai', 'IN445566', 'MUM123', 'Sedan', 4.5, 'Sedan'),
    ('Sofia', 'sofia@email.com', 1, '1122334455', 'Ottawa', 'CA556677', 'OTW678', 'Auto Rickshaw', 4.2, 'Auto Rickshaw'),
    ('Raj', 'raj@email.com', 91, '9988776655', 'Rajkot', 'IN667788', 'RJK123', 'Bike', 4.0, 'Bike'),
    ('Samir', 'samir@email.com', 91, '5544332211', 'Surat', 'IN445566', 'SRT456', 'Auto Rickshaw', 4.2, 'Auto Rickshaw'),
    ('Tenzin', 'tenzin@email.com', 975, '9988776655', 'Thimphu', 'BT778899', 'THP123', 'Bike', 4.1, 'Bike');

SELECT * FROM Drivers



DROP TABLE Drivers