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

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE first_name = ('Irena' OR 'Vidya' OR 'Maya') AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name like 'e%' OR '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name like 'e%' AND '%e';
# SELECT * FROM employees WHERE last_name like 'e%e';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' like '%-12-25';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name like '%q%' AND last_name not like '%qu%';