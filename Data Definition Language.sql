create database student_management;
use student_management;
CREATE TABLE classrooms (
    classroom_id INT not null PRIMARY KEY,
    grade        INT NOT NULL,
    section      VARCHAR(35) NOT NULL
);

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    full_name  VARCHAR(35) NOT NULL,
    email      VARCHAR(50),
    dob        DATE NOT NULL,
    phone      VARCHAR(10),  -- Changed to VARCHAR to accommodate various formats
    specialty  VARCHAR(35) NOT NULL
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name  VARCHAR(35) NOT NULL,
    email      VARCHAR(50),
    dob        DATE NOT NULL,
    address    VARCHAR(100)   -- Increased length for addresses
);

CREATE TABLE courses (
    course_id   VARCHAR(30) PRIMARY KEY,
    name        VARCHAR(30) NOT NULL,
    description VARCHAR(255)   -- Increased length for description
);

CREATE TABLE enrollment (
    student_id      INT PRIMARY KEY,
    classroom_id    INT NOT NULL,
    date_enrollment DATE,
    CONSTRAINT enrollment_classrooms_fk FOREIGN KEY (classroom_id)
        REFERENCES classrooms (classroom_id)
);

CREATE TABLE marks (
    student_id INT NOT NULL,
    course_id  VARCHAR(30) NOT NULL,
    mark       INT,
    mark_date  DATE,
    CONSTRAINT ma_sc_pk PRIMARY KEY (student_id, course_id),
    CONSTRAINT marks_courses_fk FOREIGN KEY (course_id)
        REFERENCES courses (course_id),
    CONSTRAINT marks_students_fk FOREIGN KEY (student_id)
        REFERENCES students (student_id)
);

CREATE TABLE course_teacher (
    course_teacher_id INT PRIMARY KEY,
    teacher_id       INT NOT NULL,
    course_id        VARCHAR(30) NOT NULL,
    CONSTRAINT course_teacher_courses_fk FOREIGN KEY (course_id)
        REFERENCES courses (course_id),
    CONSTRAINT course_teacher_teachers_fk FOREIGN KEY (teacher_id)
        REFERENCES teachers (teacher_id)
);

CREATE TABLE study_schedule (
    classroom_id      INT NOT NULL,
    course_teacher_id INT NOT NULL,
    day               VARCHAR(30) NOT NULL,
    start_time        TIME NOT NULL,  -- Changed to TIME
    end_time          TIME NOT NULL,    -- Changed to TIME
    CONSTRAINT study_schedule_pk PRIMARY KEY (classroom_id, course_teacher_id),
    CONSTRAINT s_s_class_fk FOREIGN KEY (classroom_id)
        REFERENCES classrooms (classroom_id),
    CONSTRAINT s_s_course_t_fk FOREIGN KEY (course_teacher_id)
        REFERENCES course_teacher (course_teacher_id)
);
