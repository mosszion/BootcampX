
-- This query Calculates the average time it takes to start an assistance request.
SELECT  AVG( assistance_requests.started_at - assistance_requests.created_at) AS average_wait_time
FROM assistance_requests;

