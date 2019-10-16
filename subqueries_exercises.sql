USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT * FROM employees
WHERE hire_date = (
    SELECT hire_date FROM employees
    WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
SELECT DISTINCT title FROM Titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = "Aamod"
) GROUP BY title;

# Find all the current department managers that are female.
SELECT * FROM employees WHERE gender = "F"
                          AND emp_no IN (
        SELECT emp_no FROM dept_manager
        WHERE to_date > NOW()
    );

# (Curious) Find Tokuyasu Pesch (person with the highest salary) actual salary.
SELECT salary FROM salaries
WHERE emp_no IN (
    SELECT emp_no from employees where first_name = "Tokuyasu" and last_name = "Pesch"
);