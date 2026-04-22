-- 1. Company database yaradilir
CREATE DATABASE Company;

-- 2. Database silinir
DROP DATABASE Company;

-- 3. Yenid?n yaradilir
CREATE DATABASE Company;

-- 4. Database secilir
USE Company;

-- 5. Employeers cedveli yaradilir
CREATE TABLE Employeers (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    WorkName VARCHAR(50),
    WorkpNo VARCHAR(20),
    Salary DECIMAL(10,2)
	);

-- 6. OldEmployee cedveli yaradilir
CREATE TABLE OldEmployee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50)
);

-- 7. OldEmployee cedveli silinir
DROP TABLE OldEmployee;

-- 8. Employeers cedvelinde Name sutunu silinir
ALTER TABLE Employeers
DROP COLUMN Name;

-- 9. WorkName sutununun adi deyisdirilir (Job)
EXEC sp_rename 'Employeers.WorkName', 'Job', 'COLUMN';

-- 10. AssistantWorkers cedveli yaradilor
CREATE TABLE AssistantWorkers (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    WorkName VARCHAR(50),
    WorkpNo VARCHAR(20),
    Salary DECIMAL(10,2)
);

-- 11. Employeers cedveline 1 isci elave edilir
INSERT INTO Employeers (Id, Surname, Job, WorkpNo, Salary)
VALUES (1, 'Aliyev', 'Manager', '001', 2500);

-- 12. AssistantWorkers cedveline 4-5 isci elave edilir
INSERT INTO AssistantWorkers VALUES
(1, 'Aysel', 'Memmedova', 'Assistant', 'A01', 900),
(2, 'Orxan', 'Aliyev', 'Assistant', 'A02', 1200),
(3, 'Leyla', 'Huseynova', 'Assistant', 'A03', 1800),
(4, 'Rauf', 'Quliyev', 'Assistant', 'A04', 2200),
(5, 'Nigar', 'Ismayilova', 'Assistant', 'A05', 1500);

-- 13. Employeers cedvelindeki butun melumatlar
SELECT * FROM Employeers;

-- 14. AssistantWorkers cedvelindeki butun melumatlar
SELECT * FROM AssistantWorkers;

-- 15. Maasý 2000-den yuxari olanlarin adi ve soyadi
SELECT Name, Surname 
FROM AssistantWorkers
WHERE Salary > 2000;

-- 16. Maasý 1000 ile 2000 arasinda olanlar
SELECT Name, Surname 
FROM AssistantWorkers
WHERE Salary BETWEEN 1000 AND 2000;