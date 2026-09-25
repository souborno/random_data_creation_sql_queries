--select top 10 * from company_employee_data;


----select Department
----	, Designation
----	, Salary
----	, RANK() over (Partition by Department, Designation order by Department, Designation, Salary) as Rank_temp
----	, DENSE_RANK() over (Partition by Department, Designation order by Department, Designation, Salary) as DenseRank_temp
----	, ROW_NUMBER() over (Partition by Department, Designation order by Department, Designation, Salary) as RowNumber_temp
----from company_employee_data
----where Department = 'Finance' and Designation = 'Associate';


----select *
----from company_employee_data
----where Department = 'Finance' and Designation = 'Associate' and Gender = 'Females';

select distinct Designation, Department, Salary, dense_rank_temp
from (
select *,
	dense_rank() over (partition by Department, Designation order by salary desc) as dense_rank_temp
from company_employee_data
)
where dense_rank_temp = 2;