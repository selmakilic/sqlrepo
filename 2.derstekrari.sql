---TEKRAR
CREATE TABLE sairler(
 id INT,
 name VARCHAR(50),
 email VARCHAR(50)


);
INSERT INTO sairler VALUES(
 1001,
 'Can Yucel',
 'sair@gmail.com'

);

SELECT * FROM sairler;
INSERT INTO sairler VALUES(
 1002,
 'Ismet Ozel',
 'sair@gmail.com'
);

SELECT * FROM sairler;

--EMPTY ILE NULL AYNI DEGILDIR -EMPTY '' KABUL EDILIR

INSERT INTO sairler VALUES(
 1003,
 '',
 'sair@gmail.com'
	
);

INSERT INTO sairler(name) VALUES(
 'Nazim Hikmet'
);

--10- Tabloya UNIQUE Constraint'i Ekleme
CREATE TABLE developers(
  id SERIAL, --SERIAL : Otomatik sirali bir sekilde veri girisi yapar.
  name VARCHAR(50),
  email VARCHAR(50) UNIQUE, --UNIQUE: Tabloda ayni sutun icinde verinin essiz olmasini saglar.
  salary REAL, --REAL: Ondalik sayi girisinde kullanilir.
  prog_lang VARCHAR(20)

);
SELECT * FROM developers;

INSERT INTO developers(name,email,salary,prog_lang) VALUES(
'Ahmet',
'dev@gmail.com',
5000,
'Java'

);

--Email kolinu ayni olamaz.
INSERT INTO developers(name,email,salary,prog_lang) VALUES(
'Mehmet',
'devops@gmail.com',
3500,
'Python'


);

INSERT INTO developers(email,salary,prog_lang) VALUES(
'security@email.com',
4200,
'.NET'

);

SELECT * FROM developers;

--11-Tabloya NOT NULL Constraint'i ekleme
CREATE TABLE doctors(
id SERIAL,
name VARCHAR(50) NOT NULL, -- NOT NULL: Tablodaki verinin deger atamasini zorunlu kilar.
email VARCHAR(50) UNIQUE,
salary REAL 
	
);

SELECT * FROM doctors;

INSERT INTO doctors(name,email,salary) VALUES(
'Dr.Gregory House',
'dr@email.com',
6400


);

--name NOT NULL tanimlandigi icin bos olamaz.
INSERT INTO doctors(name,email,salary) VALUES(
'Alex',
'dr1@email.com',
8000


);

--Empty ile NULL birbirinden farkli degerlerdir.Empty yapilabilir.
INSERT INTO doctors(name,email,salary) VALUES(
'',
'dr2@email.com',
9000


);

SELECT * FROM doctors;

--12-PK Constraint'i ekleme

CREATE TABLE students2(
id INT PRIMARY KEY, -- NOT NULL, UNIQUE, Baska bir tablo ile iliski kurmak icin kullanilacaktir.
name VARCHAR(50),
grade REAL,
register_date DATE 


);

SELECT * FROM students2;

--PK Constrainte DIKKAT!

--12-PK Constraint'i 2.yontem ile ekleme

CREATE TABLE students3(
id INT,
name VARCHAR(50) NOT NULL,
grade REAL,
register_date DATE,
CONSTRAINT std_pk PRIMARY KEY(id)



);

SELECT * FROM students3;

--Eger PK' ye ozel bir isim verilmek istenirse  bu yontem kullanilir.
--Birden fazla sutunu bir araya getirerek bir sutun olusturup PK yapmak icinde bu yontem kullanilir.(Composite Key)


--Composite Key Kullanimi

CREATE TABLE students4(
id INT,
name VARCHAR(50) NOT NULL,
grade REAL,
register_date DATE,
CONSTRAINT std_pk4 PRIMARY KEY(id,name) -- Birden fazla field PK olarak belirlenebilir.

);
SELECT * FROM students4;

--CONSTRAINleri goruntulemek icin Table -> Properties da denebilir.
--NOT NULL kullanimi Table->Properties icinde PostgreSQL gostermez.

--13-FK Constraint' i Ekleme (students3-address3)
CREATE TABLE address3(
address_id INT,
street VARCHAR(50),
city VARCHAR(50),
student_id INT, --FK, NULL kabul EDER ,DUBLICATE kabul eder.
        CONSTRAINT add_fk FOREIGN KEY(student_id) REFERENCES students3(id)
	


);

SELECT * FROM address3;

--14- CHECK Constraint'i ekleme
CREATE TABLE personel(
id INT,
name VARCHAR(50) NOT NULL CHECK(name<>''), --<>:Not Equals
salary REAL CHECK(salary>5000), --Maas 5000 den az olamaz.
age INT CHECK(age>0) -- Yas negatif olamaz.

);


SELECT * FROM personel;

INSERT INTO personel VALUES(1,'',10000,25); -- hata verir  CHECK '' KABUL ETMEZ.
INSERT INTO personel VALUES(1,'A',1000,25); --hata verir MAAS 5000 DEN AZ OLAMAZ.
INSERT INTO personel VALUES(1,'A',10000,-5); -- Hata verir YAS NEGATIF OLAMAZ

INSERT INTO personel VALUES(1,'A',10000,25);























