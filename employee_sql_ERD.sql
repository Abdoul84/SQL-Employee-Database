title_id
-
title_id VARCHAR PK
title VARCHAR

employees
-
emp_no INTEGER PK
emp_title_id INTEGER FK >- title_id.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

departments
-
dept_no VARCHAR PK
dept_name VARCHAR

dept_emp
-
emp_no INTEGER PK FK - employees.emp_no
dept_no INTEGER PK FK - departments.dept_no


dept_manager
-
dept_no VARCHAR PK FK - employees.emp_no
emp_no INTEGER PK FK - departments.dept_no

salaries
-
emp_no INTEGER PK FK - employees.emp_no
emp_title_id INTEGER 
salary INTEGER