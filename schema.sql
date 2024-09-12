CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

-- Query to check data in the 'titles' table
SELECT * FROM titles;

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    birth_date DATE,
    hire_date DATE,
    emp_title_id VARCHAR,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Query to check data in the 'employees' table
SELECT * FROM employees;

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

-- Query to check data in the 'departments' table
SELECT * FROM departments;

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Query to check data in the 'dept_manager' table
SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Query to check data in the 'dept_emp' table
SELECT * FROM dept_emp;

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Query to check data in the 'salaries' table
SELECT * FROM salaries;