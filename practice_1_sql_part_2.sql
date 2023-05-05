SELECT * FROM sinhvien.student;
SELECT* FROM sinhvien.student
WHERE Status=true;
SELECT *FROM sinhvien.subject
WHERE credit=10;
SELECT S.studentID,S.studentName,C.ClassName
FROM student S JOIN class C ON S.ID=C.ID
WHERE ClassName='A1';
SELECT S.studentID,S.studentName,Sub.SubName,M.Mark
FROM student S JOIN Mark M ON S.studentID=M.studentID JOIN subject Sub ON M.SubID=Sub.SubID
WHERE Sub.SubName='CF';
SELECT*FROM sinhvien.student
WHERE
 studentName LIKE 'h%';
UPDATE  student
SET ID=2 WHERE studentID=1;
SELECT S.stuentName,Sub.SubName,M.Mark FROM  student INNER JOIN mark ON S.studentID=M.studentID
INNER JOIN subject ON Sub.SubID=M.SubID
ORDER BY Mark ASC;