CREATE TABLE Employee(
	E_Id int PRIMARY KEY  IDENTITY,
	E_Name varchar(255) NOT NULL,
	TL int
)
DROP TABLE Employee

INSERT INTO Employee(E_Name, TL) VALUES
('Yash', 2),
('Denish', NULL),
('Jayesh', 2)

SELECT *
FROM  Employee

SELECT Emp.*, E.E_Name AS TL_Name
FROM Employee AS Emp
LEFT JOIN Employee as E
ON Emp.TL = E.E_Id;