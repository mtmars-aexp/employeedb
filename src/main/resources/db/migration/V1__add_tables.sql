#Add tables
CREATE TABLE jobs(
    job_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE employees(
    employee_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    job_id INT NOT NULL,
    first VARCHAR(255) NOT NULL,
    last VARCHAR(255),
    salary DECIMAL(13,2)
);

CREATE TABLE pensions(
    pension_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    employee_id INT,
    provider VARCHAR(255) DEFAULT 'American Express',
    contribution DECIMAL(13,2)
);

#Setup foreign keys

ALTER TABLE employees
ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id);

ALTER TABLE pensions
ADD FOREIGN KEY (employee_id) REFERENCES employees(employee_id);
