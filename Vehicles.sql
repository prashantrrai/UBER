CREATE TABLE Vehicle(
	VehicleId int IDENTITY PRIMARY KEY,
	VehicleName varchar(30) NOT NULL UNIQUE,
	VehicleImage nvarchar(MAX) DEFAULT 'https://i.ndtvimg.com/i/2015-11/ola_650x400_51446651541.jpg'
)

INSERT INTO Vehicle(VehicleName)
VALUES 
('Sedan'),
('SUV'),
('Luxury'),
('Auto Rickshaw'),
('Bike')

SELECT * FROM Vehicle