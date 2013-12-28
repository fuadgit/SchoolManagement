
SELECT 
std.FirstName+' '+std.LastName AS Student,
std.Class,
res.ExamName,
res.Name AS [Subject],
res.MarksObtained,
CASE WHEN res.MarksObtained < res.PassMark THEN 'Fail' ELSE 'PASS' END AS [Status],
res.FirstName+' '+res.LastName AS Teacher
FROM
(
SELECT 
s.StudentID,
cl.ClassID,
cl.Name AS Class,
sec.Section,
c.FirstName AS FirstName,
c.LastName as LastName,
c.Phone
FROM 
Student s
JOIN Contact c ON s.ContactID = c.ContactID
JOIN Class cl ON s.ClassID = cl.ClassID
JOIN Section sec ON cl.SectionID = sec.SectionID
) std
JOIN
(
SELECT 
r.*,
e.[Date],
e.FullMark,
e.PassMark,
et.ExamName,
sub.Name,
c.FirstName,
c.LastName
FROM
Result r
JOIN Exam e ON r.ExamID =e.ExamID
JOIN [Subject] sub ON e.SubjectID = sub.SubjectID
JOIN Teacher t ON sub.TeacherID = t.TeacherID
JOIN Contact c ON t.ContactID = c.ContactID
JOIN ExamType et ON e.TypeID = et.TypeID
) res ON std.StudentID = res.StudentID

