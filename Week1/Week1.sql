USE test;

CREATE TABLE student (
	id INT NOT NULL PRIMARY KEY,
	 `name` VARCHAR(10) NOT NULL,
	 dept_name VARCHAR(20) NOT NULL,
     tot_cred INT NULL,
     UNIQUE(`name`)
);

ALTER TABLE `student` ADD e_mail VARCHAR(200);
ALTER TABLE `student` ADD homepage VARCHAR(200);

DROP TABLE `student`;

INSERT INTO student (id, `name`, dept_name, tot_cred) VALUES (00128, 'Zhang', 'Comp.Sci.', 102);
INSERT INTO student (id, `name`, dept_name, tot_cred) VALUES (12345, 'Shanker', 'Comp.Sci.', 32);
INSERT INTO student (id, `name`, dept_name, tot_cred) VALUES (19991, 'Brandt', 'History.', 80);
INSERT INTO student (id, `name`, dept_name, tot_cred) VALUES (23121, 'Chavez', 'Finance.', 102);

SELECT id, `name`, dept_name, tot_cred FROM `student`;

DELETE FROM student WHERE `name` = 'Zhang';

UPDATE student SET `name` = 'Guhyeon', tot_cred = 130 WHERE id = 12345;