--Student Table

/*
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 17),
    gender VARCHAR(10),
    city VARCHAR(50),
    marks INT,
    admission_date DATE DEFAULT CURRENT_DATE
);
*/

--Inserting Sample data into Student Table

/*
INSERT INTO students (name, age, gender, city, marks) VALUES
('Aman', 20, 'Male', 'Delhi', 85),
('Riya', 21, 'Female', 'Mumbai', 92),
('Kabir', 22, 'Male', 'Pune', 76),
('Sara', 20, 'Female', 'Delhi', 88),
('Arjun', 23, 'Male', 'Mumbai', 67);
*/

/*
SELECT * FROM students
*/

--Courses Table

/*
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50),
    fee INT CHECK (fee > 0)
);
*/

--Inserting sampling into course table

/*
INSERT INTO courses (course_name, department, fee) VALUES
('Data Science', 'CS', 50000),
('Web Development', 'IT', 40000),
('Machine Learning', 'CS', 60000);
*/

/*
SELECT * FROM courses
*/

--Enrollments Table

/*
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);
*/

--Inserting Sample data into enrollments table

/*
INSERT INTO enrollments (student_id, course_id) VALUES
(1,1),
(2,1),
(3,2),
(4,3),
(5,2);
*/

/*
SELECT * FROM enrollments
*/

--Payments Table

/*
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    student_id INT,
    amount_paid INT,
    payment_date DATE DEFAULT CURRENT_DATE,
    payment_mode VARCHAR(30),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
*/

--Inserting sample datas into payments

/*
INSERT INTO payments (student_id, amount_paid, payment_mode) VALUES
(1, 25000, 'UPI'),
(2, 50000, 'Card'),
(3, 20000, 'Cash'),
(4, 60000, 'UPI'),
(5, 15000, 'Card');
*/

/*
SELECT * FROM payments
*/