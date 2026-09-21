


--select * from company_employee_data;

--select Department, count(*) from company_employee_data group by Department;

--select Department, Designation, count(*) from company_employee_data group by Department, Designation order by Department, Designation;

--select Department, Designation, count(*) from company_employee_data group by Department, Designation order by Department, Designation;

--select Department, Designation, count(*) as 'number of employee', min(salary) as 'min_salary', max(salary) as 'max_salary', avg(salary) as 'avg salary'
--from company_employee_data 
--group by Department, Designation 
--order by Department, Designation;

--select Designation, count(*) as 'number of employee', min(salary) as 'min_salary', max(salary) as 'max_salary', avg(salary) as 'avg salary'
--from company_employee_data 
--group by Designation 
--order by avg(salary);

--select Designation, Gender, count(*) as 'number of employee', min(salary) as 'min_salary', max(salary) as 'max_salary', avg(salary) as 'avg salary'
--from company_employee_data 
--group by Designation, Gender
--order by Designation, Gender;

--select Designation, Salary, count(*)
--from company_employee_data
--where Department = 'Finance'
--group by Designation, Salary
--having count(*) > 1;

--select Designation, Salary, count(*)
--from company_employee_data
--where Department = 'Sales'
--group by Designation, Salary
--having count(*) > 1;

