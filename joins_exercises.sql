# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
#   FROM employees as e
#            JOIN dept_emp as de
#                 ON de.emp_no = e.emp_no
#            JOIN departments as d
#                 ON d.dept_no = de.dept_no
#   WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

-- Shows managers in each department.
SELECT departments.dept_name, CONCAT(employees.first_name, " ",employees.last_name) as Name
FROM departments
         JOIN dept_manager
              ON dept_manager.dept_no = departments.dept_no
         JOIN employees
              ON employees.emp_no = dept_manager.emp_no;

-- Same as above but managed by women. ?
SELECT departments.dept_name, CONCAT(employees.first_name, " ",employees.last_name) as Name
FROM departments
         JOIN dept_manager
              ON dept_manager.dept_no = departments.dept_no
         JOIN employees
              ON employees.emp_no = dept_manager.emp_no
WHERE gender = "F";

-- Find the current titles of employees currently working in the Customer Service department.
SELECT DISTINCT titles.title
FROM departments
         JOIN dept_emp
              ON dept_emp.dept_no = departments.dept_no
         JOIN employees
              ON dept_emp.emp_no = employees.emp_no
         JOIN titles
              ON titles.emp_no = employees.emp_no
WHERE departments.dept_name = "Customer Service";


-- Find the current salary of all current managers. ?
SELECT CONCAT(employees.first_name, " ",employees.last_name) as Name, salaries.salary
FROM salaries
         JOIN employees
              ON salaries.emp_no = employees.emp_no
         JOIN dept_manager
              on employees.emp_no = dept_manager.emp_no;
