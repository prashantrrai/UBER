CREATE TABLE Pricing(
    PricingId INT IDENTITY PRIMARY KEY,
	Country VARCHAR(30) NOT NULL,
	DialingCode INT FOREIGN KEY REFERENCES Country(DialingCode),
	City VARCHAR(30) FOREIGN KEY REFERENCES City(CityName),
	Vehicle VARCHAR(30) FOREIGN KEY REFERENCES Vehicle(VehicleName),
	Driver_Profit INT,
    Min_Fare INT NOT NULL,
    BaseFare INT NOT NULL,
    PerMileRate INT NOT NULL,
    PerMinuteRate INT NOT NULL,
    MaxSpace INT NOT NULL,
)


INSERT INTO Pricing (Country, DialingCode, City, Vehicle, Driver_Profit, Min_Fare, BaseFare, PerMileRate, PerMinuteRate, MaxSpace)
VALUES
    ('India', 91, 'Ahmedabad', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Bengaluru', 'SUV', 75, 150, 600, 15, 3, 6),
    ('India', 91, 'Chennai', 'Luxury', 100, 200, 750, 18, 4, 4),
    ('India', 91, 'Delhi', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Kolkata', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('Pakistan', 92, 'Lahore', 'SUV', 75, 150, 600, 15, 3, 6),
    ('Pakistan', 92, 'Islamabad', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('Sri Lanka', 94, 'Colombo', 'Luxury', 100, 200, 750, 18, 4, 4),
    ('Afghanistan', 93, 'Kabul', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('Bhutan', 975, 'Thimphu', 'SUV', 75, 150, 600, 15, 3, 6),
    ('Russia', 7, 'Moscow', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('Bangladesh', 880, 'Dhaka', 'Luxury', 100, 200, 750, 18, 4, 4),
    ('Canada', 1, 'Ottawa', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('Nepal', 977, 'Kathmandu', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Ahmedabad', 'Auto Rickshaw', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Mumbai', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Chandigarh', 'SUV', 75, 150, 600, 15, 3, 6),
    ('India', 91, 'Hyderabad', 'Luxury', 100, 200, 750, 18, 4, 4),
    ('India', 91, 'Jaipur', 'Sedan', 50, 100, 500, 12, 2, 4),
	('India', 91, 'Mysuru', 'SUV', 75, 150, 600, 15, 3, 6),
    ('India', 91, 'Ahmednagar', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Varanasi', 'Sedan', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Indore', 'Luxury', 100, 200, 750, 18, 4, 4),
    ('India', 91, 'Kanpur', 'Auto Rickshaw', 50, 100, 500, 12, 2, 4),
    ('India', 91, 'Pune', 'Sedan', 50, 100, 500, 12, 2, 4);

SELECT * FROM Pricing
SELECT * FROM City


DROP TABLE Pricing