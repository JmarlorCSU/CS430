SELECT e.first_name, e.last_name, s.salary 
FROM employees e, salaries s 
WHERE e.emp_no = s.emp_no AND s.salary > 90000 AND s.to_date = '9999-01-01';

SELECT e.first_name, e.last_name, d.dept_name 
FROM employees e, dept_emp de, departments d 
WHERE e.emp_no = de.emp_no AND de.dept_no = d.dept_no AND (d.dept_no = "d008" OR d.dept_no = "d009") ;

SELECT e.first_name, e.last_name, t.title 
FROM employees e, titles t 
WHERE e.emp_no = t.emp_no AND e.gender = "f" AND t.title = "Technique Leader" ;

SELECT e.first_name, e.last_name, s.salary
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE t.title != 'Software Engineer' AND s.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
ORDER BY s.salary;

SELECT e.first_name, e.last_name, e.birth_date 
FROM employees e 
ORDER BY e.birth_date DESC ;

SELECT e.first_name, e.last_name 
FROM employees e, dept_manager m 
WHERE e.emp_no = m.emp_no AND m.to_date = '9999-01-01' ;

SELECT e.first_name, e.last_name, d.dept_name 
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON d.dept_no = de.dept_no 
JOIN salaries s ON s.emp_no = e.emp_no 
where s.salary = (select max(salary) from salaries where to_date = '9999-01-01') and s.to_date = '9999-01-01';