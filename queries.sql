
-- Create Employees Table
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  hire_date DATE,
  department_id INT,
  job_title VARCHAR(100),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert data into Employees Table
INSERT INTO Employees (employee_id, first_name, last_name, email, hire_date, department_id, job_title)
VALUES
  (1, 'John', 'Smith', 'john.smith@example.com', '2020-01-15', 101, 'Software Engineer'),
  (2, 'Jane', 'Doe', 'jane.doe@example.com', '2019-11-10', 102, 'Marketing Manager'),
  (3, 'Michael', 'Johnson', 'michael@example.com', '2021-03-20', 101, 'Database Administrator'),
  (4, 'Emily', 'Williams', 'emily@example.com', '2022-06-05', 103, 'Sales Executive');

-- Create Departments Table
CREATE TABLE Departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100),
  manager_id INT,
  FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

-- Insert data into Departments Table
INSERT INTO Departments (department_id, department_name, manager_id)
VALUES
  (101, 'Engineering', 1),
  (102, 'Marketing', 2),
  (103, 'Sales', 4);

-- Create Salaries Table
CREATE TABLE Salaries (
  salary_id INT PRIMARY KEY,
  employee_id INT,
  salary_amount INT,
  effective_date DATE,
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Insert data into Salaries Table
INSERT INTO Salaries (salary_id, employee_id, salary_amount, effective_date)
VALUES
  (1, 1, 60000, '2020-01-15'),
  (2, 2, 75000, '2020-01-15'),
  (3, 3, 65000, '2021-03-20'),
  (4, 4, 70000, '2022-06-05');
