-- A query for total number of assistance_requests for a teacher

SELECT COUNT(*) AS total_assitances , teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;
