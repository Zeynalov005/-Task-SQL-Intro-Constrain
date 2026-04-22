-- 1. C?dv?li yaratmaq
CREATE TABLE Students (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) DEFAULT 'xxx',
    Age INT NOT NULL,
    Point INT NOT NULL
);

-- 2. M?lumat ?lav? etm?k
INSERT INTO Students (Name, Surname, Age, Point)
VALUES 
('Ali', 'Mammadov', 20, 85),
('Nigar', 'Aliyeva', 22, 90),
('Rashad', 'Huseynov', 19, 75);

-- Surname qeyd etm?d?n
INSERT INTO Students (Name, Age, Point)
VALUES ('Leyla', 18, 80);

-- 3. Sorðular

-- Bütün t?l?b?l?r
SELECT * FROM Students;

-- Surname = 'xxx' olanlarý d?yiþ
UPDATE Students
SET Surname = 'Unknown'
WHERE Surname = 'xxx';

-- Id = 1 olan t?l?b?nin Point-ni d?yiþ
UPDATE Students
SET Point = 95
WHERE Id = 1;

-- Point 70-90 arasý
SELECT * FROM Students
WHERE Point BETWEEN 70 AND 90;

-- Point-? gör? azalan sýra
SELECT * FROM Students
ORDER BY Point DESC;

-- Age < 21 olanlarýn Name v? Surname
SELECT Name, Surname FROM Students
WHERE Age < 21;

-- 4. Yeni sütun ?lav? etm?k
ALTER TABLE Students
ADD AveragePoint INT CHECK (AveragePoint BETWEEN 0 AND 100);