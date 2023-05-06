CREATE DATABASE mangercity;
USE mangercity;
CREATE TABLE city(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
PersonName VARCHAR(200) NOT NULL,
Age INT NOT NULL,
Sex VARCHAR(10),
Saralay FLOAT DEFAULT 0 CHECK(Saralay>0),
cityName VARCHAR(225) NOT NULL);
CREATE TABLE product(
pID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
productName VARCHAR(225) NOT NULL,
wieght FLOAT DEFAULT 0 CHECK(wieght>0),
price DOUBLE DEFAULT 0 CHECK(price>0),
ID INT NOT NULL,
FOREIGN KEY (ID)  REFERENCES city(ID)
);
INSERT INTO product(pID,productName,wieght,price,ID)
VALUES (01,"xa Phong",2,20000,1);
INSERT INTO product(pID,productName,wieght,price,ID)
VALUES(03,"son",2,30000000,3);
INSERT INTO product(pID,productName,wieght,price,ID)
VALUES(04,"nuoc",2,3000,4);
INSERT INTO city(ID,PersonName,Age,Sex,Saralay,cityName)
VALUES(1,"Nguyen Thanh Cong",35,"Nam",40000000,"Thanh Pho Ho Chi Minh");
INSERT INTO ctiy(ID,PersonName,Age,Sex,Saralay,cityName)
VALUES (2,"Nguyen Thi ANh",21,"Nu",460000,"Ha Noi");
INSERT INTO city(ID,PersonName,Age,Sex,Saralay,cityName)
VALUES(3,"Giang Thi Dua",22,"Nu",900000000,"Ha Noi");
INSERT INTO city(ID,PersonName,Age,Sex,Saralay,cityName)
VALUES(4,"Trieu Thi Chinh",33,"Nu",70000000,"Bac Kan");
INSERT INTO city(ID,PersonName,Age,Sex,Saralay,cityName)
VALUES(5,"Nguyen Thi Mai",25,"Nu",3000000,"Ha Noi");


