-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E'
SELECT * FROM employees WHERE last_name like 'e%';

-- Find all employees hired in the 90s
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Find all employees born on Christmas
SELECT * FROM employees WHERE birth_date like '%-12-25';

-- Find all employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name like '%q%';