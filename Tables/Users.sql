CREATE TABLE Users (
    UserId int IDENTITY PRIMARY KEY,
    UserName VARCHAR(30) NOT NULL,
    UserEmail VARCHAR(30) NOT NULL UNIQUE,
    UserPhone VARCHAR(10) NOT NULL,
	Password VARCHAR(16) NOT NULL,
	ConfirmPassword VARCHAR(16) NOT NULL,
    CountryID INT FOREIGN KEY REFERENCES Country(CountryId),
    StateID INT FOREIGN KEY REFERENCES State(StateId),
	CityID INT FOREIGN KEY REFERENCES City(CityId),
    UserProfile NVARCHAR(MAX) DEFAULT 'https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg',
	CreatedAt DATETIME2 NOT NULL DEFAULT GETDATE(),
)


DROP TABLE Users;

INSERT INTO Users (UserName, UserEmail, UserPhone, CountryID, StateID, CityID) 
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


INSERT INTO Users (UserName, UserEmail, UserPhone, Password ,ConfirmPassword, CountryID, StateID, CityID) 
VALUES
	('John Doe', 'johndoe@example.com', '1234567890', 'abcdef123', 'abcdef123', 75, 7, 9)

SELECT * FROM Users
SELECT * FROM City
SELECT * FROM Country


CREATE TRIGGER CheckValidations
ON Users
AFTER INSERT
AS
BEGIN
    DECLARE @Email VARCHAR(50);
    DECLARE @Phone VARCHAR(10);
    DECLARE @Password VARCHAR(16);
    DECLARE @ConfirmPassword VARCHAR(16);

	SELECT @Email = i.UserEmail, @Password = i.Password, @ConfirmPassword = i.ConfirmPassword, @Phone = i.UserPhone
    FROM inserted AS i;

    EXEC Validations @Email, @Phone, @Password, @ConfirmPassword;



END;
