CREATE DATABASE MyApp


CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
RegistrationDate DATE CHECK (RegistrationDate <= GETDATE()) DEFAULT GETDATE(),
ContactNumber VARCHAR(20) DEFAULT '99400000000',
Age INT CHECK ( Age >= 18),
[Address] NVARCHAR(50)
)

INSERT INTO Users ([Name], Surname, Email, RegistrationDate, ContactNumber, Age, [Address])
VALUES ('Oktay', 'Babayev', 'oktaybabayev223@gmail.com', '2006-08-04', '++94517274898',18, 'baku'),
('asdvavd', 'fngbsf', 'oktaybabayev223@gmail.com', '2006-08-04', '++94517274898',18, 'baku'),
('adcaa', 'Ssvfsr', 'oktaybabayev223@gmail.com', '2006-08-04', '++94517274898',18, 'baku')
SELECT [Name], Surname, Email from Users

CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY(1,1), 
[Name] NVARCHAR(50) NOT NULL,
Slug VARCHAR(10) UNIQUE,
CreatedAt DATE CHECK (CreatedAt <= GETDATE()) DEFAULT GETDATE(),
IsActive BIT
)

use MyApp
INSERT INTO Categoriesss([Name], Slug, CreatedAt, IsActive )
VALUES('Baku', 'oktay','1000-01-01', 1)
SELECT [Name], isActive from Categories 
