-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

-- Find all employees whose last name starts with 'E'
SELECT * FROM employees WHERE last_name like 'e%';
# SELECT CONCAT([column name], ' ', [column name]) AS '[Name for the column to display]', [column name] FROM [db name]
SELECT CONCAT(first_name, ' ', last_name) AS 'Name'FROM employees;

-- Find all employees hired in the 90s
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Find all employees born on Christmas
SELECT * FROM employees WHERE birth_date like '%-12-25';

-- Find all employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name like '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya' order by first_name, last_name;

-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya' order by last_name, first_name;

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya' AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name like 'e%' OR '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name like 'e%' AND '%e';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' like '%-12-25' ORDER BY birth_date, hire_date desc;

-- r your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT DATEDIFF(curdate(), hire_date) AS 'Days Employed' FROM employees WHERE hire_date LIKE '199%' AND hire_date like '%-12-25' ORDER BY hire_date desc;

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name like '%q%';