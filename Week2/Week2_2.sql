SELECT * FROM department;

SELECT dept_name FROM department;

SELECT * FROM student, instructor;

SELECT * FROM student 
WHERE tot_cred < 100;

SELECT * FROM student 
WHERE tot_cred > 100;


SELECT i.`name` AS 교수이름, s.`name` AS 학생이름
FROM instructor AS i, student AS s;

SELECT i.name, s.name, i.salary , s.tot_cred
FROM instructor AS i, student AS s
WHERE i.salary < 70000 AND s.tot_cred > 100;

SELECT * FROM department 
WHERE dept_name LIKE '%i%';

SELECT * FROM student
WHERE name LIKE 'S%';

SELECT * FROM student
WHERE name LIKE '_h%';

SELECT * FROM student
ORDER BY tot_cred DESC;

SELECT * FROM student
ORDER BY tot_cred;

SELECT name
FROM instructor
UNION ALL
SELECT name
FROM student;

SELECT i.`name`
FROM instructor AS i INNER JOIN student AS s ON i.`name` = s.`name`;


SELECT i.`name`
FROM instructor AS i LEFT JOIN student AS s ON i.`name` = s.`name`
WHERE s.`name` IS NULL;

SELECT i.`name`
FROM instructor AS i RIGHT JOIN student AS s ON i.`name` = s.`name`
WHERE s.`name` IS NULL;

SELECT * 
FROM student, department;

SELECT * 
FROM student AS s, department AS d
WHERE s.dept_name = d.dept_name;

SELECT *
FROM instructor AS i INNER JOIN department AS d
WHERE i.dept_name = d.dept_name;

SELECT i.name AS 교수, s.name AS 학생
FROM instructor AS i LEFT JOIN student AS s
ON i.dept_name = s.dept_name;

SELECT i.name AS 교수, s.name AS 학생
FROM instructor AS i RIGHT JOIN student AS s
ON i.dept_name = s.dept_name;



SELECT AVG(salary) FROM instructor;

SELECT MIN(salary) FROM instructor;

SELECT MAX(salary) FROM instructor;

SELECT SUM(salary) FROM instructor;

SELECT COUNT(salary) FROM instructor;

SELECT COUNT(salary) FROM instructor
WHERE salary > 70000;

SELECT dept_name FROM instructor
GROUP BY dept_name;

SELECT dept_name FROM student
GROUP BY dept_name;

SELECT dept_name FROM instructor
GROUP BY dept_name
HAVING dept_name LIKE '_i%';

SELECT name, salary 
FROM instructor
WHERE dept_name NOT IN
(
	SELECT dept_name
	FROM student
	WHERE dept_name LIKE 'F%'
);

SELECT name, salary
FROM instructor
WHERE salary < SOME
(
	SELECT salary
	FROM instructor
	WHERE name LIKE '%i%'
);

SELECT * 
FROM instructor
WHERE NOT EXISTS
(
	SELECT dept_name
	FROM student
	WHERE tot_cred > 20
);

SELECT * 
FROM (
	SELECT DISTINCT dept_name
	FROM student
	) AS tmp
WHERE tmp.dept_name LIKE '_i%';