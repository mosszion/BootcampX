-- a query that gets currently enrolled students' average assignment completion time

SELECT students.name AS student , AVG(duration) AS average_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;

