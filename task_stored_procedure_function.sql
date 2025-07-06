INSERT INTO employees (emp_id, name, salary)
VALUES 
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 40000);
DELIMITER //

CREATE PROCEDURE IncreaseSalary(
    IN empID INT,
    IN percent DECIMAL(5,2)
)
BEGIN
    UPDATE employees
    SET salary = salary + (salary * percent / 100)
    WHERE emp_id = empID;
END //

DELIMITER ;
CALL IncreaseSalary(2, 10);
DELIMITER //

CREATE FUNCTION GetAnnualSalary(
    monthly_salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END //

DELIMITER ;
SELECT 
    emp_id,
    name,
    salary AS monthly_salary,
    GetAnnualSalary(salary) AS annual_salary
FROM employees;