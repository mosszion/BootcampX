const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
});

const values=[`${process.argv[2]}`]
const queryString =  `SELECT cohorts.name as name , teachers.name AS teacher
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
GROUP BY cohorts.name,teachers.name;
`

pool
  .query(queryString,values)

  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.name}: ${user.teacher}`);
    });
  })
  .catch((error) => {
    console.error("query error:", error.stack);
  });
