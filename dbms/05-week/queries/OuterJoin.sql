SELECT i.Name AS 'Instructor Name', c.Name AS 'Course Name'
FROM Instructors i
FULL OUTER JOIN
Courses s
ON i.InstructodID = c.InstructodID
WHERE
i.Name = 'Onur'