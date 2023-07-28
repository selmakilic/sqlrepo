--4.ders 1.soru
CREATE TABLE Orders(
 order_id INT,
 customer_id INT,
 order_date DATE,
 total_amount REAL


);

INSERT INTO Orders VALUES(100,1000,'10/02/2023',500);

INSERT INTO Orders VALUES(101,1010,'11/02/2023',300);

INSERT INTO Orders VALUES(102,1012,'12/02/2023',800);

INSERT INTO Orders VALUES(105,1012,'12/02/2023',100);

SELECT * FROM Orders;
SELECT MAX(total_amount) FROM Orders;

SELECT * FROM Orders WHERE total_amount=(SELECT MAX(total_amount) FROM Orders);




--4.ders 2.soru

CREATE TABLE Employeees(
employee_id INT,
employee_name VARCHAR(50),
department_id INT,
salary REAL


);
INSERT INTO Employeees VALUES(10,'ahmet',10,1300);
INSERT INTO Employeees VALUES(20,'mehmet',11,1500);
INSERT INTO Employeees VALUES(30,'ali',12,2200);
INSERT INTO Employeees VALUES(40,'tayfun',13,1800);
INSERT INTO Employeees VALUES(50,'kazim',14,1200);
INSERT INTO Employeees VALUES(60,'HASAN',15,2500);

SELECT * FROM Employeees;


SELECT department_id FROM Employeees;
SELECT * FROM Employeees WHERE salary=(SELECT MAX(salary) FROM Employeees); 


--4.ders 3.soru

CREATE TABLE Products(
product_id INT,
product_name VARCHAR(50),
category VARCHAR (50),
price REAL,
stock_quantity REAL


);


INSERT INTO Products VALUES(1,'elma','meyve',10,200);
INSERT INTO Products VALUES(2,'et','protein',70,300);
INSERT INTO Products VALUES(3,'anahtar','esya',5,26);
INSERT INTO Products VALUES(4,'patlican','sebze',16,500);
INSERT INTO Products VALUES(5,'peynir','kahvaltilik',10,200);

SELECT * FROM Products;
SELECT category FROM Products;
SELECT MIN(price) FROM Products;
SELECT * FROM Products WHERE price=(SELECT MIN(price) FROM Products);





---SELECT  product_name FROM Products WHERE category=( SELECT MIN(price) FROM Products);


--4.ders 4.soru

CREATE TABLE Customers(
customer_id INT,
customer_name VARCHAR(50),
city VARCHAR(50)

);

INSERT INTO Customers VALUES (1,'ali','ankara');
INSERT INTO Customers VALUES (2,'mehmet','istanbul');
INSERT INTO Customers VALUES (3,'ahmet','bursa');
INSERT INTO Customers VALUES (4,'selim','kayseri');
INSERT INTO Customers VALUES (5,'zeki','kayseri');

SELECT * FROM Customers;
SELECT city FROM Customers;


CREATE VIEW RAPOR AS
SELECT COUNT(customer_name) FROM Customers WHERE city='kayseri';



SELECT * FROM Customers WHERE SELECT COUNT(DISTINCT(city)) FROM CUstomers WHERE customer_id;

 CREATE VIEW SELMA AS 
 SELECT COUNT(DISTINCT(city)) FROM CUstomers;

SELECT customer_name FROM Customers WHERE city=(SELECT city FROM Customers);

SELECT COUNT(*) FROM Customers WHERE customer_id =(DISTINCT(SELECT * FROM Customers WHERE city=(SELECT COUNT(city) FROM Customers WHERE city='ankara');));

CREATE VIEW KEZBAN AS 
SELECT COUNT(customer_name) FROM Customers WHERE city=(SELECT city FROM Customers);







