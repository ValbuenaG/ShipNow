-- QUERY 
Select department.dept_id,
  COUNT(employee.dept_id) AS 'count'
  SUM(employee.salary) AS 'sum_of_salary'
from employee LEFT JOIN department ON employee.dept_id = department.dept_id
group by department.dept_id
order by department.dept_id
GO