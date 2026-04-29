
176. Second Highest Salary
---------------------------
Table: Employee
	+-------------+------+
	| Column Name | Type |
	+-------------+------+
	| id          | int  |
	| salary      | int  |
	+-------------+------+
Input: 
Employee table:
	+----+--------+
	| id | salary |
	+----+--------+
	| 1  | 100    |
	| 2  | 200    |
	| 3  | 300    |
	+----+--------+
Output: 
	+---------------------+
	| SecondHighestSalary |
	+---------------------+
	| 200                 |
	+---------------------+
	
Solutions:
----------
METHOD-1:(Optimized Solution)
	SELECT  MAX(SALARY) AS SecondHighestSalary FROM EMPLOYEE WHERE SALARY <>(SELECT MAX(SALARY) FROM EMPLOYEE);


METHOD-2

	SELECT(SELECT DISTINCT
		Salary 
	FROM
		Employee
	ORDER BY Salary DESC
	LIMIT 1 OFFSET 1)AS SecondHighestSalary;


METHOD-3

	SELECT
		IFNULL(
		  (SELECT DISTINCT Salary
		   FROM Employee
		   ORDER BY Salary DESC
			LIMIT 1 OFFSET 1),
		NULL) AS SecondHighestSalary
======================================================================================================================================================