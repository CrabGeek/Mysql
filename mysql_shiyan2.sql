CREATE DATABASE mysql_shiyan_01;

USE mysql_shiyan_01;

CREATE TABLE department(

    dpt_name CHAR(20) NOT NULL,
    people_num INT(10) DEFAULT '10',
    CONSTRAINT dpt_pk PRIMARY KEY (dpt_name)
);

CREATE TABLE employee(

    id INT(10) PRIMARY KEY,
    name CHAR(10),
    age INT(10),
    salary INT(10) NOT NULL,
    phone INT(12) NOT NULL,
    in_dpt CHAR(20) NOT NULL,
    UNIQUE (phone),
    CONSTRAINT emp_f FOREIGN KEY (in_dpt) REFERENCES department(dpt_name)
);

CREATE TABLE project(
    proj_num INT(10) NOT NULL,
    proj_name CHAR(20) NOT NULL,
    start_day DATE NOT NULL,
    end_day DATE DEFAULT "2019-08-27",
    of_dpt CHAR(20) REFERENCES department(dpt_name),
    CONSTRAINT proj_pk PRIMARY KEY (proj_num, proj_name)
);