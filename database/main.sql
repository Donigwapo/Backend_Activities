CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name text NOT NULL,
    middle_name text DEFAULT NULL,
    last_name text NOT NULL,
    age integer NOT NULL,
    location text NOT NULL
);
INSERT INTO students  (id, first_name, last_name, age, location)
VALUES (1, 'Donni', 'Cruz', 18, 'Manila'),
(2, 'Lloyd', 'Sing', 20, 'Manila'),
(3, 'Shc','Cold', 21, 'Manila'), 
(4, 'Cathy','Gray', 19, 'Laguna'),
(5, 'Zack','Tabudlo', 22, 'Marikina'),
(6, 'Jane', 'Doe', 21, 'Manila'),
(7, 'enaj', 'eod', 23, 'Manila'),
(8, 'Anj', 'One', 24, 'Manila'),
(9, 'Naoya', 'Inoue', 28, 'Manila'),
(10, 'Marlon', 'Tapales', 30, 'Manila');

DROP TABLE students CASCADE;

TRUNCATE TABLE students;

SELECT * FROM students;


--Create new table research_papers with the following columns


CREATE TABLE research_papers (
    id int NOT NULL PRIMARY KEY,
    student_id int,
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F')) DEFAULT NULL,
    CONSTRAINT fk_student_id
        FOREIGN KEY(student_id)
            REFERENCES students(id)
);

--================================================

--Insert 10 records to the new table

INSERT INTO research_papers (id, student_id, grade) VALUES
(1, 1, 'A'),
(2, 1, 'A'),
(3, 3, 'B'),
(4, 4, 'D'),
(5, 5, 'B'),
(6, 4, NULL),
(7, 4, 'C'),
(8, 1, 'B'),
(9, 2, 'C'),
(10, 4, 'C');

--Query all students with multiple research papers (select first_name, last_name, and number_of_research_papers only)


SELECT s.first_name, s.last_name, COUNT(rp.id) AS number_of_research_papers
from students s
INNER JOIN research_papers rp
ON s.id = rp.student_id
GROUP BY s.id
HAVING COUNT (rp.id) > 1;

--Query all students with ungraded research papers (select first_name, last_name, research_paper_id, and grade only)

SELECT s.first_name, s.last_name, rp.id AS research_paper_id, rp.grade
from students s
INNER JOIN research_papers rp
ON s.id = rp.student_id
WHERE rp.grade is NULL;


SELECT * FROM research_papers;

DROP TABLE research_papers;
