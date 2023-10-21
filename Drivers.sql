CREATE TABLE Country(
	Id int IDENTITY PRIMARY KEY,
	Name varchar(255) NOT NULL,
    TimeZone varchar(255) NOT NULL,
    CountryCode varchar(7) NOT NULL,
    Currency varchar(10) NOT NULL,
    FlagImage nvarchar(MAX)
	);

