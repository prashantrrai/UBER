CREATE TABLE Users (
    UserId int IDENTITY PRIMARY KEY,
    UserName varchar(30) NOT NULL,
    UserEmail varchar(30) NOT NULL UNIQUE,
    CountryCode int FOREIGN KEY REFERENCES Country(CountryCode),
    UserPhone varchar(10) NOT NULL,
    UserProfile nvarchar(MAX) DEFAULT 'https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'
)
DROP TABLE Users;

INSERT INTO Users (UserName, UserEmail, CountryCode, UserPhone) 
VALUES
	('John Doe', 'johndoe@example.com', '+1', '1234567890'),
    ('Jane Smith', 'janesmith@example.com', '+1', '9876543210'),
	('Yash Patel', 'yash@gmail.com', '+91', '9898787898'),
	('Mahesh Patel', 'mahesh@gmail.com', '+91', '7890987654'), 
	('Nikhil Panchasara', 'nikhil@gmail.com', '+91', '7890978965'),
	('Aasif Pathan', 'asif@gmail.com', '+92', '7845522789'),
	('Mohib Ali', 'mohin@gmail.com', '+93', '7890978965'),
	('Jayvardhana Malika', 'jayvardhan@gmail.com', '+94', '7890978965'),
	('Samuel', 'samuel@gmail.com', '+7', '7890978965'),
	('Dhiraj Sahu', 'dhiraj@gmail.com', '+977', '7890978965')



SELECT * FROM Users
SELECT * FROM City
SELECT * FROM Country