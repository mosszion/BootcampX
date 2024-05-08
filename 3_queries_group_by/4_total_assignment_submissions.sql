-- a query to get the total number of assignment submissions for each cohort

SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN cohorts On cohort_id = cohorts.id
GROUP BY cohort
ORDER BY total_submissions DESC;
