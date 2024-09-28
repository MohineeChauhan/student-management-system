# student-management-system

This project is an MYSQL database for a School Management System. It manages information about teachers, students, classrooms, courses, enrollments, marks, and study schedules.

<h2>Database Tables</h2>

STUDENTS: Stores student information, including student_id, email, full_name, dob, phone, and address.

TEACHERS: Stores teacher information, including teacher_id, email, full_name, dob, phone, and specialty.

ENROLLMENT: Records student enrollments, including student_id, classroom_id, and enrollment_date.

CLASSROOMS: Stores classroom details, including classroom_id, grade, and section.

COURSES: Contains course information, including course_id, name, and description.

MARKS: Records student marks, including course_id, student_id, mark, and mark_date.

<h2>Database Schema</h2>

The database schema includes tables, relationships, and constraints to ensure data integrity.

<h2>Relationships</h2>

Each student can be enrolled in multiple classes.

Each student can have multiple marks in different courses.

Each teacher can teach multiple courses.

Each classroom can have multiple enrollments.

Each classroom can have a study schedule (not shown in the schema).

<h2>Constraints</h2>

Primary Key Constraints: Ensure the uniqueness of primary key columns in each table.

Foreign Key Constraints: Enforce referential integrity between tables.

Check Constraints: Ensure that data entered adheres to specific conditions.

Unique Constraints: Enforce uniqueness on certain columns.

Default Constraints: Specify default values for columns where applicable.
