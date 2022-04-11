--1) Department database-i yaradırsız.

--2) Employees table-ı yaradırsız 
--    - Id - avtomatik artmalıdı, null olmamalıdı və təkrarlanmamalıdı
--    - Fullname - null ola bilməz uzunluğu 255 olmalıdır
--    - Age - sıfırdan kiçik və null ola bilməz
--    - Email - null ola bilməz və təkrarlanan olmamalıdı
--    - Salary - null ola bilməz və 300 ilə 2000 arası olmalıdır, kəsr ədəd olmalıdır

--3) Employee table-na datalar əlavə edirsiz.
--4) Employee-lərin bütün məlumatlarını göstərirsiz
--5) Id-i 1 olan employee-nin salary dəyərini update edirsiz
--6) Salary dəyəri 500 ilə 1500 arasında olan bütün dataları göstərən query yazırsız
--7) Bütün employee-ləri salary dəyərinə görə azalan sıralayıb sadəcə fullname, email, salary datalarını göstərən query yazırsız
--8) Adında "a" hərfi olan bütün employee-ləri gətirən query
--9) Email dəyəri "a" hərfi ilə başlayan employee datalarını gətirən query
--10) Salary dəyəri 600-dan çox olan dataların sayını qaytaran query Column-un adı Count olsun
--11) Department database-ni silən query yazın

CREATE DATABASE Department

USE Department

CREATE TABLE Employees(
	Id INT IDENTITY PRIMARY KEY,
	Fullname NVARCHAR(255) NOT NULL,
	Age TINYINT CONSTRAINT NN_Age NOT NULL,
	Email NVARCHAR(255) NOT NULL UNIQUE,
	Salary DECIMAL(18,2) NOT NULL CHECK(Salary BETWEEN 300 AND 2000)
)

INSERT INTO Employees
VALUES ('Hafiz Mehdiyev', 21, 'hmeiv@code.edu.az', 1500),
       ('Cefer Memmedzade', 21, 'cm@code.edu.az', 1200),
	   ('Ilkin Dostuyev', 21, 'id@code.edu.az', 900),
	   ('Fuad Memmedov', 20, 'fm@code.edu.az', 500),
	   ('Allahverdi Ahmedov', 5, 'aa@code.edu.az', 301),
	   ('Ibrahim Huseyinov', 2, 'meyxanaci@code.edu.az', 300)

SELECT * FROM Employees

UPDATE Employees SET Salary = 2000 WHERE Id = 1

SELECT * FROM Employees
WHERE Salary BETWEEN 500 AND 1500

SELECT Fullname, Email, Salary FROM Employees
ORDER BY Salary DESC

SELECT * FROM Employees
WHERE Fullname LIKE '%a%'

SELECT * FROM Employees
WHERE Email LIKE 'a%'

SELECT COUNT(Id) AS 'Count' FROM Employees
WHERE Salary > 600

USE master

DROP DATABASE Department