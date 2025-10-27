use HR_Analysis;
select * from dbo.messy_HR_data;

-- check duplicate--
with duplicate as (select *,ROW_NUMBER() 
over(partition by Name,Age, Salary,Gender,Department, Position,
joining_date, Performance_Score,Email,Phone_number order by salary)RN
from dbo.messy_HR_data)
select * from duplicate
where RN > 1 ;


-- checking and replacing text value in age column and replace with number--
select distinct age from dbo.messy_HR_data

update dbo.messy_HR_data
set age = case when age = 'thirty' then 30
			   when age = 'nan' then null
					else age
					end;

-- change age column datatype --
alter table messy_HR_data
alter column age int;

-- replace text column in salary to numbers--
select distinct salary from messy_HR_data
update messy_HR_data
set Salary = case when Salary ='sixty thousand' then 60000
				  when Salary = 'NAN' then 0
				  else Salary
				  end;

-- change salary datatype from nvarchar to decimal--
alter table messy_HR_data
alter column salary decimal(10,2);

-- fix the nan text that was replaced with 0 to be able to cast datatype--
-- to the avg salary of the department they belong--
with DepartmentAverages as (select department,round(avg(salary),0) Avg_dept_salary from messy_HR_data
							where salary > 0
							group by Department)
							update messy_HR_data
							set Salary= da.Avg_dept_salary
							from messy_HR_data
							join DepartmentAverages da
							on messy_HR_data.Department= da.Department
							where messy_HR_data.Salary= 0

update messy_HR_data
set email = 'N/A'
where email is null

update messy_HR_data
set email = 'N/A'
where email= 'nan'

update messy_HR_data
set Phone_Number = 'N/A'
where Phone_Number is null

update messy_HR_data
set Phone_Number = 'N/A'
where Phone_Number = 'nan'

select name, UPPER(substring(Name,1,1)) + 
LOWER(substring(Name,2, 20)) from  messy_HR_data

-- set name column to a proper case--

update messy_HR_data
set Name = UPPER(substring(Name,1,1)) + 
LOWER(substring(Name,2, 20));

select * from messy_HR_data;
