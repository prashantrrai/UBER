CREATE TABLE Users (
    UserId int IDENTITY PRIMARY KEY,
    UserName varchar(30) NOT NULL,
    UserEmail varchar(30) NOT NULL UNIQUE,
    DialingCode int FOREIGN KEY REFERENCES Country(DialingCode),
    UserPhone varchar(10) NOT NULL,
	City VARCHAR(30) FOREIGN KEY REFERENCES City(CityName),
	Country VARCHAR(30) NOT NULL,
    UserProfile nvarchar(MAX) DEFAULT 'https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg',
	RegistrationDate DATETIME  DEFAULT GETDATE(),
)


DROP TABLE Users;

INSERT INTO Users (UserName, UserEmail, DialingCode, UserPhone, City, Country) 
VALUES
	('John Doe', 'johndoe@example.com', '+1', '1234567890', 'Ottawa', 'Canada'),
    ('Jane Smith', 'janesmith@example.com', '+1', '9876543210', 'Ottawa', 'Canada'),
	('Yash Patel', 'yash@gmail.com', '+91', '9898787898', 'Mumbai', 'India'),
	('Mahesh Patel', 'mahesh@gmail.com', '+91', '7890987654', 'Mumbai', 'India'), 
	('Nikhil Panchasara', 'nikhil@gmail.com', '+91', '7890478965', 'Ahmedabad', 'India'),
	('Aasif Pathan', 'asif@gmail.com', '+92', '7845522889', 'Islamabad', 'Pakistan'),
	('Mohib Ali', 'mohin@gmail.com', '+93', '7890978765', 'Kabul', 'Afghanistan'),
	('Jayvardhana Malika', 'jayvardhan@gmail.com', '+94', '6890978965', 'Colombo', 'Sri Lanka'),
	('Samuel', 'samuel@gmail.com', '+7', '7890978964', 'Moscow', 'Russia'),
	('Dhiraj Sahu', 'dhiraj@gmail.com', '+977', '7890278965', 'Thimphu', 'Bhutan'),
    ('Alice Smith', 'alice@example.com', '+1', '1234567890', 'Delhi', '91'),
    ('Bob Johnson', 'bob@example.com', '+1', '9876543210', 'Chennai', '91'),
    ('Charlie Brown', 'charlie@example.com', '+91', '9898787898', 'Bengaluru', '91'),
    ('David Davis', 'david@example.com', '+91', '7890987654', 'Mumbai', '91'),
    ('Eva Wilson', 'eva@example.com', '+92', '7845522889', 'Lahore', '92'),
    ('Frank White', 'frank@example.com', '+93', '7890978765', 'Kathmandu', '977'),
    ('Grace Harris', 'grace@example.com', '+7', '7890978964', 'Moscow', '7'),
    ('Harry Brown', 'harry@example.com', '+977', '7890278965', 'Thimphu', '975'),
    ('Isabella Clark', 'isabella@example.com', '+94', '6890978965', 'Colombo', '94'),
    ('Jack Miller', 'jack@example.com', '+91', '7890478965', 'Hyderabad', '91');




SELECT * FROM Users
SELECT * FROM City
SELECT * FROM Country