CREATE TABLE employees (
   id INT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   department VARCHAR (50),
	age INT CHECK (age>=18),
	salary DECIMAL(10,2),
	hire_date DATE 
	
);

INSERT INTO employees (id, name, department, age, salary, hire_date) VALUES
(1, 'John Doe', 'HR', 30, 5000.00, '2020-05-15'),
(2, 'Jane Smith', 'Finance', 28, 5500.00, '2019-10-10'),
(3, 'Michael Johnson', 'Sales', 35, 6000.00, '2018-08-22'),
(4, 'Emily Adams', 'Marketing', 25, 4800.00, '2021-01-05'),
(5, 'Robert Brown', 'IT', 32, 6200.00, '2017-03-12'),
(6, 'Sarah Lee', 'HR', 29, 5300.00, '2019-06-30'),
(7, 'William Wilson', 'Finance', 26, 5800.00, '2020-09-18'),
(8, 'Linda Davis', 'Sales', 40, 6500.00, '2015-12-03'),
(9, 'James Miller', 'IT', 27, 6000.00, '2018-11-25'),
(10, 'Jennifer Taylor', 'Marketing', 31, 5100.00, '2016-07-20');


SELECT  * FROM employees;

SELECT id,name,department FROM employees;

SELECT name AS 	isim FROM employees;

ALTER TABLE employees RENAME COLUMN name  TO isim;

INSERT INTO employees (id, name, department, age, salary, hire_date) VALUES
(1, 'Ahmet', 'HR', 30, 5000.00, '2020-05-15');

ALTER TABLE employees RENAME COLUMN isim TO  name;



SELECT  * FROM employees WHERE department='HR';
SELECT  name,age,department FROM employees WHERE department='IT';
SELECT  name,department FROM employees WHERE age>30;
SELECT  name,age,department FROM employees WHERE age>30;
SELECT  * FROM employees WHERE age>25 AND age<35;
SELECT  * FROM employees WHERE age BETWEEN 25 AND 35;

CREATE VIEW hr_d AS 
SELECT  * FROM employees WHERE department='HR';
