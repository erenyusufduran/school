SELECT
c.Code AS 'Course Code' , c.Name AS 'Course Name', i.Name AS 'Instructor Name', i.Surname AS 'Instructor Surname'
FROM
Courses c, Instructors i
WHERE
c.InstructorID = i.InstructorID