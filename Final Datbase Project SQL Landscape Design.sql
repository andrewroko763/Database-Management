DROP TABLE IF EXISTS		People cascade;
CREATE TABLE 			People
(
PID			Serial			Not Null,
FirstName		VARCHAR(255)		Not Null,
LastName		VARCHAR(255)		Not Null,
Email			VARCHAR(255)		Not Null,
CellPhoneNumber		Char(12)		Not Null,
Primary Key(PID)
);

--
DROP TABLE IF EXISTS	Customers cascade;
CREATE TABLE		Customers
(
PID			INT NOT NULL references People (PID),
Primary Key(PID)
);

--
DROP TABLE IF EXISTS		Employees cascade;
CREATE TABLE 			Employees
(
PID			INT			Not Null,
StartOfEmployeeDate	Date			Not Null,
EndOFEmployeeDate	Date		        	,
PayPerHourUSD		Money			Not Null,
DateOfBirth		Date			Not Null,
Address			VARCHAR(255)		Not Null,
Primary Key(PID)
);

--

DROP TABLE IF EXISTS		Categories cascade;
CREATE TABLE 			Categories
(
CategoryID		Serial			Not Null,
Title			VARCHAR(25)		Not Null,
Primary Key(CategoryID)
);

--
DROP TABLE IF EXISTS		Projects cascade;
CREATE TABLE 			Projects
(
ProjectID		Serial			Not Null,
ProjectTitle		VARCHAR(255)		Not Null,
ProjectStartDate	Date			Not Null,
ProjectEndDate		Date			Not Null,
Address			VARCHAR(255)		Not Null,
Primary Key(ProjectID)
);

--
DROP TABLE IF EXISTS		Materials cascade;
CREATE TABLE 			Materials
(
MaterialID		Serial			Not Null,
Name			VARCHAR(255)		Not Null,
QTY			INT			Not Null,
Primary Key(MaterialID)
);

--
DROP TABLE IF EXISTS		MaterialTypes cascade;
CREATE TABLE 			MaterialTypes
(
TypeID			Serial			Not Null,
Name			VARCHAR(255)		Not Null,
Primary Key(TypeID)
);

--
DROP TABLE IF EXISTS		Suppliers cascade;
CREATE TABLE 			Suppliers
(
SupplierID		Serial			Not Null,
Name			VARCHAR(255)		Not Null,
PhoneNumber		Char(12)		Not Null,
Email			VARCHAR(255)		Not Null,
Primary Key(SupplierID)
);

--
DROP TABLE IF EXISTS		Employees_Categories cascade;
CREATE TABLE 			Employees_Categories
(
PID			INT 			NOT NULL	references Employees(PID),
CategoryID		INT 			NOT NULL	references Categories(CategoryID),
Primary Key(PID, CategoryID)
);

--
DROP TABLE IF EXISTS		Customers_Projects cascade;
CREATE TABLE 			Customers_Projects
(
PID			INT 			NOT NULL	references Customers(PID),
ProjectID		INT 			NOT NULL	references Projects(ProjectID),
Primary Key(PID, ProjectID)
);

--
DROP TABLE IF EXISTS		Employees_Projects cascade;
CREATE TABLE 			Employees_Projects
(
PID			INT 			NOT NULL	references Employees(PID),
ProjectID		INT 			NOT NULL	references Projects(ProjectID),
DateWorked		Date			Not Null,
HoursWorked		INT			Not Null,
Primary Key(PID, ProjectID, DateWorked)
);

--
DROP TABLE IF EXISTS		Materials_Type cascade;
CREATE TABLE 			Materials_Type
(
MaterialID		INT 			NOT NULL	references Materials(MaterialID),
TypeID			INT 			NOT NULL	references MaterialTypes(TypeID),
Primary Key(MaterialID, TypeID)
);

--
DROP TABLE IF EXISTS		Projects_Materials cascade;
CREATE TABLE 			Projects_Materials
(
ProjectID		INT 			NOT NULL	references Projects(ProjectID),
MaterialID		INT 			NOT NULL	references Materials(MaterialID),
QTY			INT 			NOT NULL,
Primary Key(ProjectID, MaterialID)
);

--
DROP TABLE IF EXISTS		Suppliers_Materials cascade;
CREATE TABLE 			Suppliers_Materials
(
OrderNumber		Serial			NOT NULL,
MaterialID		INT			NOT NULL references Materials(MaterialID),
SupplierID		INT			NOT NULL references Suppliers(SupplierID),
QTY			INT 			NOT NULL,
PricePerMaterialUSD	Money			NOT NULL,
Primary Key(OrderNumber)
);

--
--Insert Data into People's Table
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Teresa', 'Dean', 'tdean0@wisc.edu', '366-744-3501');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Alice', 'Gardner', 'agardner1@ning.com', '627-977-2274');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Craig', 'Stephens', 'cstephens2@bandcamp.com', '559-578-4557');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Lori', 'Smith', 'lsmith3@yahoo.co.jp', '841-906-2122');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Tammy', 'Nguyen', 'tnguyen4@nps.gov', '389-993-7557');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Evelyn', 'Hughes', 'ehughes5@sohu.com', '280-744-4039');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Henry', 'Franklin', 'hfranklin6@army.mil', '135-868-0712');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Justin', 'Stone', 'jstone7@mlb.com', '352-592-6576');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Victor', 'Stewart', 'vstewart8@sun.com', '547-640-0640');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Sharon', 'Sanchez', 'ssanchez9@mozilla.com', '348-268-6149');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Heather', 'Wheeler', 'hwheelera@harvard.edu', '622-530-3056');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Thomas', 'Gray', 'tgrayb@google.cn', '233-557-0779');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Pamela', 'Harper', 'pharperc@digg.com', '062-052-1323');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Roger', 'Ross', 'rrossd@themeforest.net', '321-528-8652');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Sara', 'Gilbert', 'sgilberte@wikispaces.com', '402-025-6931');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Anthony', 'Burns', 'aburnsf@imdb.com', '303-943-3316');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Craig', 'Smith', 'csmithg@state.tx.us', '854-960-2273');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Michelle', 'Ruiz', 'mruizh@washingtonpost.com', '172-661-2657');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Tina', 'Howard', 'thowardi@archive.org', '164-579-9027');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Lois', 'Nelson', 'lnelsonj@fc2.com', '386-363-2295');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Kelly', 'Cunningham', 'kcunninghamk@netlog.com', '435-584-0224');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Louise', 'Carr', 'lcarrl@shinystat.com', '951-254-3047');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Billy', 'Diaz', 'bdiazm@hatena.ne.jp', '346-863-6238');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Ruth', 'Medina', 'rmedinan@blog.com', '707-863-0651');
insert into People (FirstName, LastName, Email, CellPhoneNumber) values ('Sharon', 'Gordon', 'sgordono@paypal.com', '959-355-5444');

--Store PID in Customers
insert into Customers (PID) values (1);
insert into Customers (PID) values (2);
insert into Customers (PID) values (3);
insert into Customers (PID) values (4);
insert into Customers (PID) values (5);
insert into Customers (PID) values (6);
insert into Customers (PID) values (7);
insert into Customers (PID) values (8);
insert into Customers (PID) values (9);
insert into Customers (PID) values (10);

--Insert statements for Employees
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (11, '10/13/2002', Null, '$22.32', '6/14/1980', '0476 Caliangt Parkway');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (12, '9/8/2004', '6/29/2015', '$21.28', '3/23/1982', '8 Lakeland Parkway');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (13, '11/6/2004', Null, '$45.08', '4/8/1975', '5785 Aberg Way');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (14, '8/7/2008', '4/13/2016', '$49.30', '5/13/1964', '17356 Charing Cross Pass');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (15, '1/19/2006', Null, '$25.44', '2/16/1972', '46308 Susan Center');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (16, '2/1/2004', '2/7/2016', '$28.26', '12/25/1963', '60004 Village Green Junction');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (17, '8/25/2001', '6/21/2009', '$17.92', '6/28/1976', '1587 Weeping Birch Place');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (18, '6/30/2010', Null, '$41.41', '12/11/1988', '2998 Badeau Junction');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (19, '6/5/2008', '11/22/2015', '$41.41', '11/1/1984', '19 Coleman Parkway');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (20, '2/24/2000', Null, '$45.72', '3/3/1980', '1 West Place');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (21, '10/24/2003', Null, '$27.92', '10/12/1972', '325 Iowa Junction');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (22, '5/14/2011', '8/21/2015', '$31.21', '12/24/1986', '81714 Cody Place');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (23, '11/11/2007', '4/10/2015', '$43.50', '11/13/1962', '25 Golf Course Terrace');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (24, '5/2/2009', '1/10/2015', '$15.89', '9/15/1963', '0345 Pankratz Circle');
insert into Employees (PID, StartOfEmployeeDate, EndOfEmployeeDate, PayPerHourUSD, DateOfBirth, Address) values (25, '7/17/2000', '7/8/2014', '$41.09', '6/25/1964', '995 Jenifer Trail');

--Insert statements into Categories Table
insert into Categories (Title) values ('Landscaper');
insert into Categories (Title) values ('Technician');
insert into Categories (Title) values ('Project Manager');
insert into Categories (Title) values ('Foreman');
insert into Categories (Title) values ('Office Manager');
insert into Categories (Title) values ('Office Worker');

--Insert Statements for Projects
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Smith Residence', '3/4/2003', '3/14/2015', '040 Rieder Place');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('City Park', '11/22/2013', '2/19/2015', '794 Oxford Way');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Tropical Transformation', '9/20/2007', '10/9/2008', '50540 5th Center');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Bond Estate', '4/26/2003', '8/4/2014', '9 Cardinal Parkway');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Schneider Residence', '3/18/2011', '7/30/2015', '8950 Paget Way');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Dominos Pizza', '7/29/2012', '3/14/2015', '89 Pepper Wood Court');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Town Municipal Building', '9/10/2006', '1/10/2016', '07744 Pine View Point');
insert into Projects (ProjectTitle, ProjectStartDate, ProjectEndDate, Address) values ('Jones Residence', '9/26/2011', '11/5/2015', '7139 Spohn Avenue');

--Materials Insert Statements
insert into Materials (Name, QTY) values ('Brown Mulch', 326);
insert into Materials (Name, QTY) values ('Red Mulch', 320);
insert into Materials (Name, QTY) values ('Gravel', 303);
insert into Materials (Name, QTY) values ('River Stone', 479);
insert into Materials (Name, QTY) values ('Dark Wood Chips', 400);
insert into Materials (Name, QTY) values ('Light Wood Chips', 473);
insert into Materials (Name, QTY) values ('Regular Soil', 184);
insert into Materials (Name, QTY) values ('Premium Soil', 319);
insert into Materials (Name, QTY) values ('Seed', 466);
insert into Materials (Name, QTY) values ('Fertilizer', 283);


--MaterialTypes
insert into MaterialTypes (name) values ('Mulch');
insert into MaterialTypes (name) values ('Stone');
insert into MaterialTypes (name) values ('Wood Chips');
insert into MaterialTypes (name) values ('Lawn Care Products');

--Suppliers
insert into Suppliers (Name, PhoneNumber, Email) values ('Lowes', '498-719-3996', 'ldixon0@lowes.com');
insert into Suppliers (Name, PhoneNumber, Email) values ('Home Depot', '739-143-2477', 'bwilson1@homedepot.com');
insert into Suppliers (Name, PhoneNumber, Email) values ('Griffin Stoneworks', '677-493-8794', 'cpalmer2@gmail.com');
insert into Suppliers (Name, PhoneNumber, Email) values ('Bobs Woodchips', '437-710-2904', 'bob.woodchips@gmail.com');

--Employees_Categories
insert into Employees_Categories (PID, CategoryID) values (11, 1);
insert into Employees_Categories (PID, CategoryID) values (12, 1);
insert into Employees_Categories (PID, CategoryID) values (13, 1);
insert into Employees_Categories (PID, CategoryID) values (14, 1);
insert into Employees_Categories (PID, CategoryID) values (15, 5);
insert into Employees_Categories (PID, CategoryID) values (16, 6);
insert into Employees_Categories (PID, CategoryID) values (17, 3);
insert into Employees_Categories (PID, CategoryID) values (18, 3);
insert into Employees_Categories (PID, CategoryID) values (19, 4);
insert into Employees_Categories (PID, CategoryID) values (20, 2);
insert into Employees_Categories (PID, CategoryID) values (21, 2);
insert into Employees_Categories (PID, CategoryID) values (22, 2);
insert into Employees_Categories (PID, CategoryID) values (23, 2);
insert into Employees_Categories (PID, CategoryID) values (24, 6);
insert into Employees_Categories (PID, CategoryID) values (25, 6);

--Customers_Projects
insert into Customers_Projects (PID, ProjectID) values (1, 1);
insert into Customers_Projects (PID, ProjectID) values (2, 2);
insert into Customers_Projects (PID, ProjectID) values (3, 3);
insert into Customers_Projects (PID, ProjectID) values (4, 4);
insert into Customers_Projects (PID, ProjectID) values (5, 5);
insert into Customers_Projects (PID, ProjectID) values (6, 6);
insert into Customers_Projects (PID, ProjectID) values (7, 7);
insert into Customers_Projects (PID, ProjectID) values (8, 8);


--Employees_Projects
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (11, 1, '3/4/2003', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (12, 1, '3/5/2014', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (13, 2, '11/23/2013', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (14, 2, '1/18/2015', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (15, 3, '9/20/2007', 5);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (16, 3, '4/23/2008', 4);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (17, 4, '11/22/2006', 3);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (18, 4, '8/29/2011', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (19, 5, '3/31/2012', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (20, 5, '8/29/2014', 6);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (21, 6, '12/5/2013', 4);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (22, 6, '9/1/2014', 3);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (23, 7, '5/18/2008', 5);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (24, 8, '2/3/2012', 8);
insert into Employees_Projects (PID, ProjectID, DateWorked, HoursWorked) values (25, 8, '3/12/2013', 6);

--Materials_Type
insert into Materials_Type (MaterialID, TypeID) values (1, 1);
insert into Materials_Type (MaterialID, TypeID) values (2, 1);
insert into Materials_Type (MaterialID, TypeID) values (3, 2);
insert into Materials_Type (MaterialID, TypeID) values (4, 2);
insert into Materials_Type (MaterialID, TypeID) values (5, 3);
insert into Materials_Type (MaterialID, TypeID) values (6, 3);
insert into Materials_Type (MaterialID, TypeID) values (7, 4);
insert into Materials_Type (MaterialID, TypeID) values (8, 4);
insert into Materials_Type (MaterialID, TypeID) values (9, 4);
insert into Materials_Type (MaterialID, TypeID) values (10, 4);

--Projects_Materials
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (1, 1, 30);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (1, 8, 10);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (1, 9, 25);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (2, 10, 40);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (2, 9, 30);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (3, 3, 20);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (3, 4, 50);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (4, 5, 10);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (4, 6, 15);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (5, 7, 20);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (5, 2, 12);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (6, 1, 40);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (6, 8, 50);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (7, 9, 60);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (8, 3, 25);
insert into Projects_Materials (ProjectID, MaterialID, QTY) values (8, 4, 20);

--Suppliers_Materials
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (1, 1, 50, '$4.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (2, 1, 50, '$5.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (3, 3, 50, '$10.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (4, 3, 50, '$12.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (5, 4, 50, '$3.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (6, 4, 50, '$4.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (7, 2, 50, '$3.50');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (8, 2, 50, '$5.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (9, 2, 50, '$7.00');
insert into Suppliers_Materials (MaterialID, SupplierID, QTY, PricePerMaterialUSD) values (10, 2, 50, '$9.00');

--This view shows the current employees work history information
CREATE VIEW Current_Employee AS
Select FirstName, LastName, Title, PayPerHourUSD
From Employees_Categories, Employees, People, Categories
Where People.PID = Employees.PID
AND Employees.PID = Employees_Categories.PID
AND Categories.CategoryID = Employees_Categories.CategoryID
AND Employees.EndOfEmployeeDate is NULL

-- This view shows the status of inventory at the company
CREATE VIEW Present_Inventory AS
Select Materials.MaterialID as TEST, Materials.Name, Materials.QTY - a.ProjectQTY + b.SupplierQTY as QTY
FROM Materials, (SELECT Projects_Materials.MaterialID, SUM (projects_Materials.QTY) 
as ProjectQTY FROM Projects_Materials GROUP BY Projects_Materials.MaterialID) as a, 
(SELECT Suppliers_Materials.MaterialID , SUM (Suppliers_Materials.QTY) as SupplierQTY FROM Suppliers_Materials 
Group By Suppliers_Materials.MaterialID) as b
WHERE a.MaterialID = Materials.MaterialID
GROUP BY TEST, a.ProjectQTY , b.SupplierQTY;	

--Project History; allows users to see materials used for certain projects

SELECT ProjectTitle, Materials.Name, Projects_Materials.QTY
FROM Projects_Materials, Materials, Projects
WHERE Materials.MaterialID = Projects_Materials.MaterialID
AND Projects.ProjectID = Projects_Materials.ProjectID

--Order History; shows users every order made through company, the cost of the order

SELECT Suppliers_Materials.OrderNumber, Materials.Name, Suppliers.Name, Suppliers_Materials.QTY, PricePerMaterialUSD, Suppliers_Materials.QTY * PricePerMaterialUSD AS OrderTotal
From Materials, Suppliers, Suppliers_Materials
Where Materials.MaterialID = Suppliers_Materials.MaterialID
AND Suppliers.SupplierID = Suppliers_Materials.SupplierID
ORDER BY OrderNumber ASC

--Stored Procedure: Calculating Age of Employees

CREATE OR REPLACE FUNCTION CALCULATE_AGE(EmployeeID INTEGER) RETURNS Integer AS $$
DECLARE
	Age Integer:= (SELECT EXTRACT (YEAR FROM AGE(CURRENT_DATE,(SELECT DateOfBirth From Employees where 	
	Employees.pid = employeeID))));
BEGIN
	Return age;
END;
$$ LANGUAGE plpgsql;

--Trigger: Assess Project

CREATE OR REPLACE FUNCTION Assess_Project() RETURNS TRIGGER AS $Assess_Project$
  BEGIN
    IF
      (SELECT ProjectEndDate
      FROM Projects
      WHERE ProjectID = NEW.ProjectID)
      IS NOT NULL THEN
        Raise Exception 'You cannot enter an employee into a project that has already ended';
      END IF;
    RETURN VIEW;
  END;
$Assess_Project$ LANGUAGE plpgsql;

CREATE TRIGGER Assess_Project
	BEFORE INSERT ON Employees_Projects
	FOR EACH ROW
	EXECUTE PROCEDURE Assess_Project();



----Trigger: Assess_Inventory

CREATE OR REPLACE FUNCTION Assess_Inventory() RETURNS TRIGGER AS $Assess_Inventory$
  DECLARE
	A INTEGER := (SELECT QTY FROM CURRENT_INVENTORY WHERE ID IN (SELECT Materials.MaterialID From Materials WHERE Materials.MaterialID = New.MaterialID));
	B INTEGER := New.QTY;
	C INTEGER := A - B;
  BEGIN
	IF (C < 5) THEN
			RAISE EXCEPTION 'Not enough stock in Inventory';
		END IF;
	RETURN NEW;
	END;
$Assess_Inventory$ LANGUAGE plpgsql;

CREATE TRIGGER Assess_Inventory
BEFORE INSERT ON Projects_Materials
FOR EACH ROW EXECUTE PROCEDURE Assess_Inventory();

--Database Security
CREATE ROLE DatabaseAdministrator; 
GRANT SELECT ON ALL TABLES	
IN SCHEMA PUBLIC
TO DatabaseAdministrator;

--
CREATE ROLE AssistantAdmin;
REVOKE DELETE ON Suppliers_Materials		FROM AssistantAdmin;
REVOKE DELETE ON Employees_Projects		FROM AssistantAdmin;
REVOKE DELETE ON Projects			FROM AssistantAdmin;

--Attempted to create roles for ProjectManager and Regular Employee as well but continuously recieved a syntax error under "GRANT SELECT' even when I reopened in a new database--I will continue to try to fix this issue

Create Role Project_Leader;
REVOKE ALL PRIVILEGES ON People			From Project_Leader;
REVOKE ALL PRIVILEGES ON Customers			From Project_Leader;
REVOKE ALL PRIVILEGES ON Employees			From Project_Leader;
REVOKE ALL PRIVILEGES ON Categories			From Project_Leader;
REVOKE ALL PRIVILEGES ON Projects			From Project_Leader;
REVOKE ALL PRIVILEGES ON Materials			From Project_Leader;
REVOKE ALL PRIVILEGES ON MaterialTypes			From Project_Leader;
REVOKE ALL PRIVILEGES ON Suppliers			From Project_Leader;
REVOKE ALL PRIVILEGES ON Employees_Categories		From Project_Leader;
REVOKE ALL PRIVILEGES ON Customers_Projects		From Project_Leader;
REVOKE ALL PRIVILEGES ON Employees_Projects		From Project_Leader;
REVOKE ALL PRIVILEGES ON Materials_Type		From Project_Leader;
REVOKE ALL PRIVILEGES ON Projects_Materials		From Project_Leader;
REVOKE ALL PRIVILEGES ON Suppliers_Materials		From Project_Leader;
