--1- yorum satiridir database olusturma: --2 adet -- ifadesi kullanilir.
--2 - Database olusturma  --DDL
CREATE DATABASE msungur;

--3 -DATABASE SILME  --DDL
DROP DATABASE msungur;
 
CREATE DATABASE skilic;
DROP DATABASE skilic;

--4-  Tablo olusturma -DDL
CREATE TABLE students(
      id CHAR(4),
	  name VARCHAR(50),
	  grade REAL, --REAL ondalikli sayiyi ifade eder
	  register_date DATE
);

--5- Var olan bit tablodan yeni bir tablo olusturma
CREATE TABLE grades as SELECT name, grade FROM students;


--6-Tablo icine veri ekleme
INSERT INTO students VALUES('1001','Ali',92.4,'2021-01-05');
INSERT INTO students VALUES('1002','veli',76.8,'2021-01-11');
INSERT INTO students VALUES('1002','leyla',45.4,'2021-02-11');
INSERT INTO students VALUES('1002','mecnun',62.75,'2021-03-11');

--7- Bazi sutunlara data ekleme
INSERT INTO students(name,grade) VALUES(
   'Asli',
	84.6
	
);

--8- Tablo tum verileri getirme
SELECT * FROM students;

--9 -Tablodan bazi datalari getirme
SELECT name,grade FROM students;
SELECT id,register_date FROM students;



