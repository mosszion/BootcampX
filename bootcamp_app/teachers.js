const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
});

pool 
  .query (  `SELECT cohorts.name as name , teachers.name AS teacher
  FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name = '${process.argv[2]}'
  GROUP BY cohorts.name,teachers.name;
  `)
  
  
  .then((res) => {
    res.rows.forEach((user) => {
      
      console.log(`${user.name}: ${user.teacher}`);
    });


  })
  .catch((error) => { console.error("query error:", error.stack)});
