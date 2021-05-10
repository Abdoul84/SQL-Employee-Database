DROP TABLE titles
CREATE TABLE titles (
					 title_id VARCHAR NOT NULL, 
					 tilte VARCHAR NOT NULL,
	                 PRIMARY KEY (title_id)
);

SELECT * from titles;

DROP TABLE employees
CREATE TABLE employees (
						emp_no INT NOT NULL,
	                    emp_title_id VARCHAR NOT NULL,
						birth_date DATE NOT NULL,
						first_name VARCHARNOT NULL,
						last_name VARCHAR NOT NULL,
						sex VARCHAR NOT NULL,
						hire_date DATE NOT NULL,
                        PRIMARY KEY (emp_no),
						FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * from employees;

DROP TABLE departments
CREATE TABLE departments (
						  dept_no VARCHAR   NOT NULL,
						  dept_name VARCHAR   NOT NULL,
						  PRIMARY KEY (dept_no)
);

select * from departments;

DROP TABLE dept_emp
CREATE TABLE dept_emp (
					   emp_no INT   NOT NULL,
					   dept_no VARCHAR   NOT NULL,
					   from_date date   NOT NULL,
					   to_date date   NOT NULL,
					   PRIMARY KEY (emp_no, dept_no),
					   FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
					   FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

select * from dept_emp;

DROP TABLE dept_manager
CREATE TABLE dept_manager (
	                       dept_no VARCHAR NOT NULL,
	                       emp_no INTEGER NOT NULL,
	                       PRIMARY KEY (emp_no, dept_no),
	                       FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	                       FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from dept_manager;

DROP TABLE salaries
CREATE TABLE salaries (
					   emp_no INTEGER NOT NULL, 
					   salary INTEGER NOT NULL,
					   PRIMARY KEY (emp_no), 
					   FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * from salaries;