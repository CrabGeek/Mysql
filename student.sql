CREATE DATABASE grades;

USE grades;

CREATE TABLE student 
(
    s_id INT NOT NULL PRIMARY KEY,
    s_name VARCHAR(6) NOT NULL,
    gender char(10) NOT NULL
);

CREATE TABLE course
(
    c_id INT NOT NULL PRIMARY KEY,
    c_name VARCHAR(20) NOT NULL
);

CREATE TABLE mark
(
    mid INT NOT NULL PRIMARY KEY,
    s_id INT NOT NULL,
    c_id INT NOT NULL,
    score INT NOT NULL,
    FOREIGN KEY(s_id) REFERENCES student(s_id),
    FOREIGN KEY(c_id) REFERENCES course(c_id)
    
);

