CREATE DATABASE sale_mananger;
USE sale_mananger;
CREATE TABLE customer(
cusID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cusName VARCHAR (225) NOT NULL,
cusAge INT NOT NULL);
INSERT INTO customer(cusID,cusName,cusAge)
VALUES(1,'Minh Quan',10);
INSERT INTO customer(cusID,cusName,cusAge)
VALUES(2,'Ngoc Oanh',20);
INSERT INTO customer(cusName,cusAge)
VALUES('Hong Ha',50);
CREATE TABLE ordered(
orID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cusID INT NOT NULL,
FOREIGN KEY (cusID) REFERENCES customer(cusID),
oDate DATETIME,
oTotal DOUBLE  );
INSERT INTO ordered(orID,cusID,oDate)
VALUES (1,1,'3/21/2006');
INSERT INTO ordered(orID,cusID,oDate)
VALUES(2,2,'3/23/2006');
INSERT INTO ordered(orID,cusID,oDate)
VALUES(3,1,'3/16/2006');
CREATE TABLE product(
proID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
proName VARCHAR(225) NOT NULL,
price INT NOT NULL);
INSERT INTO product(proID,proName,price)
VALUES(1,'Ti Vi',10000);
INSERT INTO product(proName,price)
VALUES('May giat',2000);
INSERT INTO product(proName,price)
VALUES('Tu lanh',30000);
CREATE TABLE orderTime(
orID INT NOT NULL,
FOREIGN KEY(orID) REFERENCES ordered(orID),
proID INT NOT NULL,
FOREIGN KEY(proID)REFERENCES product(proID),
qauTy INT NOT NULL);
INSERT INTO orderTime(orID,proID,qauTY)
VALUES(1,1,3);
INSERT INTO orderTime(orID,proID,qauTy)
VALUES(1,3,7);
INSERT INTO orderTime(orID,proID,qauTy)
VALUES(1,3,8);
INSERT INTO orderTime(orID,proID,qauTy)
VALUES(2,1,9);
INSERT INTO orderTime(orID,proID,qauTy)
VALUES(3,1,10);
INSERT INTO orderTime(orID,proID,quaTY)
VALUES(2,1,22);
SELECT * FROM customer INNER JOIN ordered ON customer.cusID=ordered.cusID
INNER JOIN ordertime ON ordered.orID=ordertime.orID
INNER JOIN product ON ordertime.proID=product.proID;





