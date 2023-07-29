---3.ders odevler 1. soru
---a) Bir "Products" tablosu düşünelim. Bu tabloda ürünlere ait bilgiler
 --ulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--product_id (ürün numarası) product_name (ürün adı) category (ürün kategorisi) price (ürün fiyatı) stock_quantity (stok miktarı)
--Bu tablodan "category" alanı "Electronics" olan ve "price" alanı 1000 TL üzerinde olan ürünleri listeleyen SQL sorgusunu
--yazınız.

CREATE TABLE products1(
product_id INT,
product_name VARCHAR(50),
category VARCHAR(50),
price REAL,
stock_quantity REAL



);

INSERT INTO products1 VALUES(1, 'kitap', 'kirtasiye',10,1000);
INSERT INTO products1 VALUES(2, 'elma', 'meyve',12,2000);
INSERT INTO products1 VALUES(3, 'cep telefonu', 'electronic',2000,3000);
INSERT INTO products1 VALUES(4, 'koltuk', 'mobilya',25000,25000);

SELECT * FROM products1;

SELECT product_name FROM products1 WHERE category='electronic'; --"category" alanı "Electronics" olan
SELECT * FROM products1 WHERE price>1000; --"price" alanı 1000 TL üzerinde olan ürünleri 


SELECT * FROM products1 WHERE price>1000 AND category='electronic';  --"category" alanı "Electronics" olan VE "price" alanı 1000 TL üzerinde olan ürünleri listeleyen



--3.DERS 2.SORU 
---b) Bir "Employees" tablosu düşünelim. Bu tabloda şirkette çalışanlara ait bilgiler bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--employee_id (çalışan numarası) employee_name (çalışan adı) department (çalışanın bağlı olduğu departman) salary (çalışanın maaşı)
--hire_date (çalışanın işe başlama tarihi) Bu tablodan "department" alanı "Sales" olan ve "salary" alanı 5000 TL'den fazla olan çalışanların isimlerini ve maaşlarını listeleyen SQL sorgusunu yazınız.

CREATE TABLE EMPLOYEE(
employee_id INT,
employee_name VARCHAR(50),
department VARCHAR(50),
salary REAL,
hire_date DATE	


);

INSERT INTO EMPLOYEE VALUES(1,'ali','it',5300,'2020-08-23');
INSERT INTO EMPLOYEE VALUES(2,'mehmet','engineer',4500,'2021-03-21');
INSERT INTO EMPLOYEE VALUES(3,'fatih','teacher',3800,'2021-05-01');
INSERT INTO EMPLOYEE VALUES(4,'fatma','manager',7000,'2022-03-05');
INSERT INTO EMPLOYEE VALUES(5,'ayse','doctor',6200,'2020-08-20');
INSERT INTO EMPLOYEE VALUES(6,'seda','sales',3200,'2021-07-17');
INSERT INTO EMPLOYEE VALUES(7,'furkan','sales',5200,'2023-06-07');
SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE WHERE salary>5000;
SELECT * FROM EMPLOYEE WHERE department='sales';
SELECT * FROM EMPLOYEE WHERE department='sales' AND salary>5000;
SELECT employee_name, salary FROM EMPLOYEE WHERE department='sales' AND salary>5000;-- cevap

--3.DERS 3.SORU
--c) Bir "Orders" tablosu düşünelim. Bu tabloda müşterilere ait sipariş bilgileri bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır:
--order_id (sipariş numarası) customer_name (müşteri adı) order_date (sipariş tarihi) total_amount (toplam tutar) status (sipariş durumu)
--Bu tablodan "total_amount" alanı 1000 TL üzerinde olan ve "status" alanı "Shipped" olan siparişleri listeleyen SQL sorgusunu yazınız.

CREATE TABLE ORDERS1(
order_id INT,
customer_name VARCHAR(50),
order_date DATE,
total_amount REAL,
status VARCHAR(25)
	

);

INSERT INTO ORDERS1 VALUES(1,'ali','2023-07-29',1800,'pending');
INSERT INTO ORDERS1 VALUES(2,'ayse','2023-07-29',1200,'shipped');
INSERT INTO ORDERS1 VALUES(3,'fatih','2023-07-29',2500,'preparıng');
INSERT INTO ORDERS1 VALUES(4,'derya','2023-07-29',3000,'cancelled');
INSERT INTO ORDERS1 VALUES(5,'ahmet','2023-07-29',900,'shipped');

SELECT * FROM ORDERS1;

SELECT * FROM ORDERS1 WHERE total_amount>1000;
SELECT * FROM ORDERS1 WHERE  status='shipped';
SELECT * FROM ORDERS1 WHERE total_amount>1000 AND status='shipped'; --cevap

--3.DERS 4.SORU
--d) Bir "Books" tablosu düşünelim. Bu tabloda kitaplara ait bilgiler bulunmaktadır. Tabloda aşağıdaki alanlar yer almaktadır: book_id (kitap numarası) book_name (kitap adı)
--author (yazar adı) genre (kitap türü) publication_year (yayın yılı)
--Bu tablodan "genre" alanı "Romance" olan ve "publication_year" alanı 2000 yılından sonra olan kitapları listeleyen SQL sorgusunu yazınız.
CREATE TABLE BOOKS1(
book_id INT,
book_name VARCHAR(50),
author_name VARCHAR(50),
genre VARCHAR(50),
publication_year DATE 

);
INSERT INTO BOOKS1 VALUES(1,'A','ali','romance','2020-01-17');
INSERT INTO BOOKS1 VALUES(2,'B','ayse','polisiye','2022-01-17');
INSERT INTO BOOKS1 VALUES(3,'C','ahmet','bilim kurgu','2023-05-17');
INSERT INTO BOOKS1 VALUES(4,'D','adnan','romance','1999-01-18');
SELECT * FROM BOOKS1;
SELECT * FROM BOOKS1 WHERE genre='romance' ;
SELECT * FROM BOOKS1 WHERE  publication_year>'2000-01-01';
SELECT * FROM BOOKS1 WHERE genre='romance' AND publication_year>'2000-01-01'; -- CEVAP