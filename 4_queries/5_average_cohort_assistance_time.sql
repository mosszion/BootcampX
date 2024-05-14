-- query gets the average duration of assistance requests for each cohort
SELECT cohorts.name AS name , AVG(assistance_requests.completed_at - assistance_requests.started_at)  AS average_assitance_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name 
ORDER BY average_assitance_time;