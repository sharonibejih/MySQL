USE EMPLOYEES;
SELECT 
    first_name, last_name
FROM
    employees;
    
    SELECT 
    *
FROM
    employees;
    
    SELECT 
    dept_no
FROM
    departments;
    
    SELECT 
    *
FROM
    departments;
    
    # WHERE and AND OPERATORS:
    SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis' and gender = 'M';
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
    
    # OR OPERATOR:
    SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
        
        #OPERATOR PRECEDENCE:
        SELECT 
    *
FROM
    employees
WHERE
    gender = 'f' AND (first_name = 'Kellie'
        OR first_name = 'aruna');
        # always remember to place a bracket when you working with AND and OR in the same query.
        
        # IN and NOT IN OPERATORS:
        # the IN operator selects for all input in a column whose values meet up to the condition.
        #the NOT IN selects those values in a column that don not meet up to the condition.
       
       # EXAMPLE 1
        SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    # This command line gives a result for the first_name column that met the condition for only 'Denis and 'Elvis'.
    
    # EXAMPLE 2
    SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
    # This gives a result that doesn't have either three names on the first_name column.
    
# LIKE and NON LIKE OPERATORS:
# We use like to select the data about all individuals in say first_name column, whose names start
# or end with some specified letters. To do this we use '%'. This replaces a sequence of other letters.

# EXAMPLE 1:
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%'); # This resulted to first names that started with 'Mark'
    
    #EXAMPLE 2:
    SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2020%'); # we got an empty table because no one's hire_date started with year 2020.
    
    # EXAMPLE 3:
    SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');
# We used an underscore because we know all emp_no's are 5 digits and we knew the first four digits
# we wanted. So instead of using '%', we used '_'. 
# '%' is best used when you don't know how many letters or digits make up that input.

# WILDCARD CHARACTERS: They are %, _, and * They are used in getting out a set of data.
 SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%'); 
    
    # BETWEEN AND OPERATOR: 'Between' and 'and' go along.
     
     SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN (66000) AND (70000);
    
    SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN ('10004') AND ('10012');
    
    SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN ('d003') AND ('d006');
    
    #IS NULL and IS NOT NULL OPEARTORS:
    SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
    # COMPARISON OPERATORS:
    SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01' AND gender = 'F';
    
 SELECT 
    *
FROM
    salaries
WHERE
    salary > '150000';

SELECT DISTINCT
    hire_date
FROM
    employees;
    
#AGGREGATE FUNCTIONS: COUNT(), SUM(), MIN(), MAX(), AVG()
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
    select count(*) from dept_manager;
    
    # ORDER BY:
    SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC ;

# GROUP BY:
SELECT 
    *
FROM
    employees
WHERE
    emp_no >= 40000
GROUP BY hire_date  # group by simply selects uniques records for each row.
ORDER BY hire_date desc;

rollback;

SELECT 
    salary, COUNT(emp_no) AS 'emps_with same_salary'
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;

# HAVING

SELECT 
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no;

SELECT 
    *
FROM
    dept_emp
LIMIT 100;