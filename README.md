# sql-practice-task
INSERT INTO employees (emp_id, name, salary)
VALUES 
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 40000);

outputs:
Query OK, 3 rows affected

CALL IncreaseSalary(2, 10)

(Increases Bob's salary by 10%)

Before: | emp_id | name   | salary  | |--------|--------|---------| | 2      | Bob    | 60000   |

After Calling Procedure:

CALL IncreaseSalary(2, 10);


 
 Output:

Query OK, 1 row affected

Updated Table: | emp_id | name   | salary  | |--------|--------|---------| | 1      | Alice  | 50000   | | 2      | Bob    | 66000   | | 3      | Charlie| 40000   |

SELECT * FROM employees

Query:

SELECT * FROM employees;

 Output: | emp_id | name    | salary  | |--------|---------|---------| | 1      | Alice   | 50000.00| | 2      | Bob     | 66000.00| | 3      | Charlie | 40000.00|


SELECT with GetAnnualSalary

Query:

SELECT 
    emp_id,
    name,
    salary AS monthly_salary,
    GetAnnualSalary(salary) AS annual_salary
FROM employees;

 Output: | emp_id | name    | monthly_salary | annual_salary  | |--------|---------|----------------|----------------| | 1      | Alice   | 50000.00       | 600000.00      | | 2      | Bob     | 66000.00       | 792000.00      | | 3      | Charlie | 40000.00       | 480000.00      |

CREATE PROCEDURE and CREATE FUNCTION

Outputs:

Query OK, 0 rows affected












Task 8: Stored Procedures and Functions

 Objective:
Learn to modularize SQL logic using reusable blocks like Stored Procedures and Functions.

  Contents:
- Insert sample data
- Create a stored procedure (IncreaseSalary)
- Create a function (GetAnnualSalary)
- Execute procedure and function

 File Name:
task8_stored_procedure_function.sql
