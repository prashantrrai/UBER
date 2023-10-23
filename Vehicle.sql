CREATE TABLE Vehicle(
	VehicleName VARCHAR(30) PRIMARY KEY,
	VehicleImage NVARCHAR(MAX) DEFAULT 'https://i.ndtvimg.com/i/2015-11/ola_650x400_51446651541.jpg'
)

INSERT INTO Vehicle(VehicleName)
VALUES 
('Sedan'),
('SUV'),
('Luxury'),
('Auto Rickshaw'),
('Bike')

SELECT * FROM Vehicle

DROP TABLE Vehicle