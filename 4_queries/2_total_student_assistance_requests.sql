
-- a query for total number of assitance_requests for a student

SELECT COUNT(*) AS total_assitances , students.name AS name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
