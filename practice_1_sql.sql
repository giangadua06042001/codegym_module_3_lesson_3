CREATE DATABASE sinhvien;
USE sinhvien;
CREATE TABLE class(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ClassName VARCHAR(20) NOT NULL,
StartDate DATETIME NOT NULL,
status BIT  NOT NULL);
INSERT INTO class
VALUES(1,"A1","20/12/2008",1);
INSERT INTO class
VAlUES(2,"A2","22/12/2008",1);
INSERT INTO class
VALUES(3,'B3',Current_Date,0);
CREATE TABLE student(
studentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
studentName VARCHAR(225) NOT NULL,
Addess VARCHAR(225) NOT NULL,
SDT VARCHAR(20),
Status BIT,
ID INT NOT NULL,
FOREIGN KEY (ID) REFERENCES class(ID)
);
INSERT INTO student(studentID,studentName,Addess,SDT,Status,ID)
VALUES(1,'Hung','Ha Noi','0912113113',1,1)
;
INSERT INTO student(studentID,studentName,Addess,Status,ID)
VALUES(2,'Hoa','Ha Phong',1,1);
INSERT INTO student(studentID,studentName,Addess,SDT,Status,ID)
VALUES(3,'Manh','HCM','0123123123',0,2);
CREATE TABLE subject(
SubID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
SubName VARCHAR (50) NOT NULL,
Credit INT NOT NULL,
Status BIT);
INSERT INTO subject(SubID,SubName,Credit,Status)
VALUES(1,'CF',5,1);
INSERT INTO subject(SubID,SubName,Credit,Status)
VALUES(2,'C',6,1);
INSERT INTO subject(SubID,SubName,Credit,Status)
VALUE(3,'HDJ',5,1);
INSERT INTO subject(SubID,SubName,Credit,Status)
VALUES(4,'RDBMS',10,1);
CREATE TABLE mark(
markID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
SubID INT  NOT NULL,
studentID INT NOT NULL,
UNIQUE (SubId, StudentId),
FOREIGN KEY (SubID)  REFERENCES subject(SubID),
FOREIGN KEY (studentID)REFERENCES student(studentID),
Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
ExamTimes Tinyint DEFAULT 1);
INSERT INTO mark(markID,SubID,studentID,Mark,ExamTimes)
VALUES(1,1,1,8,1);
INSERT INTO mark(markID,SubID,studentID,Mark,EXamTimes)
VALUES(2,1,2,10,2);
INSERT INTO mark(marKID,SubID,studentID,Mark,ExamTimes)
VALUES(3,2,1,12,1);


