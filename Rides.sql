/*
const Status = {
  PENDING: 0,
  ASSIGNING: 1,
  REJECTED: 2,
  CANCELLED: 3,
  ACCEPTED: 4,
  ARRIVED: 5,
  STARTED: 6,
  COMPLETED: 7,
  HOLD: 8
  PICKED: 9,
};
*/

CREATE TABLE Rides (
    RideId INT IDENTITY PRIMARY KEY,
    RiderId INT FOREIGN KEY REFERENCES Users(UserId),
    DriverId INT FOREIGN KEY REFERENCES Drivers(DriverId),
    City VARCHAR(30) FOREIGN KEY REFERENCES City(CityName),
    VehicleName VARCHAR(30) FOREIGN KEY REFERENCES Vehicle(VehicleName),
    StartLocation VARCHAR(100),
    EndLocation VARCHAR(100),
	WAYPoints VARCHAR(100) DEFAULT 'NO WAY POINTS',
	TotalDistance DECIMAL(10, 2),
	TotalTime INT,
	EstimatedTime INT,
	EstimatedFare DECIMAL(10, 2),
	RideStatus INT DEFAULT 0, --[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	CONSTRAINT CK_RideStatus CHECK (RideStatus IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)),
    StartTime DATETIME,
    EndTime DATETIME,
	AssigningTime DATETIME,
	Nearest BIT DEFAULT 0,
	NearestArray NVARCHAR(MAX),
    Rating DECIMAL(2, 1) CHECK (Rating >= 1.0 AND Rating <= 5.0),
    Feedback TEXT,
    PromoCode VARCHAR(16),
    PaymentMethod VARCHAR(20), -- e.g., 'Credit Card', 'Cash', 'Wallet'
    PaymentStatus VARCHAR(20), -- e.g., 'Paid', 'Pending', 'Failed'
    CancellationReason TEXT, -- If the ride was canceled, store the reason here
	CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
);


-- Sample data for the Rides table
INSERT INTO Rides (RiderId, DriverId, City, VehicleName, StartLocation, EndLocation, TotalDistance, TotalTime, EstimatedTime, EstimatedFare, RideStatus, StartTime, EndTime, AssigningTime, Rating, Feedback, PromoCode, PaymentMethod, PaymentStatus, CancellationReason)
VALUES
    (1, 1, 'Delhi', 'Sedan', '123 Main St Noida', '456 Elm St', 10.5, 30, 25, 30.00, 1, '2023-10-01 08:00:00', '2023-10-01 08:30:00', '2023-09-30 22:00:00', 4, 'Great ride!', 'PROMO123', 'Credit Card', 'Paid', NULL),
    (2, 2, 'Mumbai', 'SUV', '789 Dalal Street', '321 Pine St', 15.7, 45, 40, 45.00, 1, '2023-10-02 12:00:00', '2023-10-02 12:45:00', '2023-10-01 20:00:00', 5, 'Excellent service', 'PROMO456', 'Credit Card', 'Paid', NULL),
    (3, 3, 'Ahmedabad', 'Luxury', '555 Lake Kakariya', '777 River Rd', 7.2, 20, 15, 20.00, 1, '2023-10-03 15:00:00', '2023-10-03 15:20:00', '2023-10-02 18:00:00', 4, 'Good ride', 'PROMO789', 'Cash', 'Paid', NULL),
	(4, 4, 'Ahmedabad', 'Auto Rickshaw', 'A123 Street', 'B456 Road', 2.5, 15, 12, 10.00, 1, '2023-10-05 09:00:00', '2023-10-05 09:15:00', '2023-10-04 20:30:00', 3, 'Satisfactory', 'PROMO101', 'Cash', 'Paid', NULL),
    (5, 5, 'Bengaluru', 'SUV', 'X987 Avenue', 'Y321 Blvd', 12.8, 35, 30, 35.00, 1, '2023-10-06 14:00:00', '2023-10-06 14:35:00', '2023-10-05 18:45:00', 4, 'Smooth ride', 'PROMO202', 'Credit Card', 'Paid', NULL),
    (6, 6, 'Delhi', 'Bike', 'D567 Lane', 'E789 Lane', 5.4, 20, 18, 15.00, 1, '2023-10-07 17:30:00', '2023-10-07 17:50:00', '2023-10-06 19:30:00', 4, 'Quick delivery', 'PROMO303', 'Wallet', 'Paid', NULL),
    (7, 7, 'Hyderabad', 'Sedan', 'H111 Drive', 'I222 Way', 8.2, 25, 22, 25.00, 1, '2023-10-08 19:00:00', '2023-10-08 19:25:00', '2023-10-07 22:15:00', 5, 'Excellent service', 'PROMO404', 'Credit Card', 'Paid', NULL),
    (8, 8, 'Lahore', 'Luxury', 'L555 Boulevard', 'M777 Street', 6.6, 22, 20, 30.00, 1, '2023-10-09 10:15:00', '2023-10-09 10:37:00', '2023-10-08 14:10:00', 3, 'Ride was okay', 'PROMO505', 'Cash', 'Pending', 'Traffic congestion'),
	(9, 9, 'Moscow', 'SUV', 'M123 Lane', 'N789 Avenue', 18.3, 50, 45, 55.00, 1, '2023-10-10 13:30:00', '2023-10-10 14:20:00', '2023-10-09 19:45:00', 4, 'Good ride', 'PROMO606', 'Credit Card', 'Paid', NULL),
    (10, 10, 'Kathmandu', 'Bike', 'K987 Road', 'L654 Street', 4.0, 15, 14, 12.00, 1, '2023-10-11 11:00:00', '2023-10-11 11:15:00', '2023-10-10 23:30:00', 5, 'Fast delivery', 'PROMO707', 'Wallet', 'Paid', NULL),
    (11, 11, 'Colombo', 'Auto Rickshaw', 'C321 Path', 'D456 Route', 1.8, 10, 8, 8.00, 1, '2023-10-12 16:45:00', '2023-10-12 16:55:00', '2023-10-11 21:00:00', 2, 'Not great', 'PROMO808', 'Cash', 'Failed', 'Driver unavailable'),
    (12, 12, 'Dhaka', 'Sedan', 'D789 Blvd', 'E321 Dr', 7.1, 25, 23, 28.00, 1, '2023-10-13 20:15:00', '2023-10-13 20:40:00', '2023-10-12 22:30:00', 3, 'Average ride', 'PROMO909', 'Credit Card', 'Paid', NULL),
    (13, 13, 'Ahmednagar', 'SUV', 'A111 Street', 'B222 Road', 9.5, 30, 28, 35.00, 1, '2023-10-14 09:30:00', '2023-10-14 10:00:00', '2023-10-13 16:15:00', 4, 'Decent ride', 'PROMO010', 'Cash', 'Paid', NULL);



SELECT * FROM Rides
SELECT * FROM Users

DROP TABLE Rides