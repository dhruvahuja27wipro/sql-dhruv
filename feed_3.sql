CREATE TABLE feed_3 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    age INT,
    status VARCHAR(20),
    comments TEXT,
    code VARCHAR(10),
    created_at DATE,
    updated_at TIMESTAMP,
    gender VARCHAR(10),
    occupation VARCHAR(50),
    salary NUMERIC,
    experience INT,
    grade VARCHAR(5),
    rating FLOAT,
    department VARCHAR(50)
);
INSERT INTO feed_3 (
    name, email, phone, city, state, country, age, status, comments,
    code, created_at, updated_at, gender, occupation, salary, experience,
    grade, rating, department
)
VALUES
-- 15 unique records
('Amit Verma', 'amit.verma@gmail.com', '9876543210', 'Delhi', 'Delhi', 'India', 34, 'Active', 'Good performer', 'C201', '2023-01-10', NOW(), 'Male', 'Engineer', 75000, 8, 'A', 4.5, 'Tech'),
('Riya Sharma', 'riya.sharma@yahoo.com', '9876501234', 'Mumbai', 'Maharashtra', 'India', 28, 'Inactive', 'On leave', 'C202', '2023-01-15', NOW(), 'Female', 'HR', 58000, 5, 'B', 3.8, 'HR'),
('John Smith', 'john.smith@outlook.com', '9876123456', 'New York', 'NY', 'USA', 42, 'Active', 'Top contributor', 'C203', '2023-01-20', NOW(), 'Male', 'Manager', 120000, 15, 'A', 4.9, 'Management'),
('Sara Lee', 'sara.lee@gmail.com', '9876234567', 'LA', 'California', 'USA', 31, 'Active', 'Promoted', 'C204', '2023-01-25', NOW(), 'Female', 'Consultant', 90000, 9, 'A', 4.4, 'Consulting'),
('Mohammed Khan', 'm.khan@hotmail.com', '9876345678', 'Dubai', 'Dubai', 'UAE', 38, 'Inactive', 'Needs improvement', 'C205', '2023-02-01', NOW(), 'Male', 'Finance Analyst', 85000, 10, 'B', 3.2, 'Finance'),
('Li Wei', 'li.wei@163.com', '9876456789', 'Beijing', 'Beijing', 'China', 29, 'Active', 'New joiner', 'C206', '2023-02-05', NOW(), 'Male', 'Developer', 67000, 4, 'B', 4.0, 'Tech'),
('Priya Nair', 'priya.nair@gmail.com', '9876567890', 'Bangalore', 'Karnataka', 'India', 26, 'Active', 'Excellent feedback', 'C207', '2023-02-10', NOW(), 'Female', 'QA', 60000, 3, 'B', 4.2, 'Quality'),
('Carlos Gomez', 'carlos.gomez@correo.com', '9876678901', 'Madrid', 'Madrid', 'Spain', 45, 'Inactive', 'On bench', 'C208', '2023-02-15', NOW(), 'Male', 'DevOps', 93000, 12, 'C', 3.6, 'DevOps'),
('Emily Davis', 'emily.davis@protonmail.com', '9876789012', 'Toronto', 'Ontario', 'Canada', 33, 'Active', 'Team lead', 'C209', '2023-02-20', NOW(), 'Female', 'Team Lead', 99000, 11, 'A', 4.7, 'Operations'),
('Rajesh Iyer', 'rajesh.iyer@gmail.com', '9876890123', 'Chennai', 'Tamil Nadu', 'India', 40, 'Active', 'Client-facing role', 'C210', '2023-02-25', NOW(), 'Male', 'Sales', 88000, 14, 'B', 4.1, 'Sales'),
('Anita Desai', 'anita.desai@gmail.com', '9876901234', 'Pune', 'Maharashtra', 'India', 36, 'Active', 'Strong performer', 'C211', '2023-03-01', NOW(), 'Female', 'Marketing', 77000, 9, 'B', 4.0, 'Marketing'),
('David Chen', 'david.chen@alibaba.com', '9876012345', 'Shanghai', 'Shanghai', 'China', 39, 'Inactive', 'Switched team', 'C212', '2023-03-05', NOW(), 'Male', 'Data Analyst', 83000, 7, 'B', 3.9, 'Analytics'),
('Fatima Noor', 'fatima.noor@emirates.com', '9876023456', 'Abu Dhabi', 'Abu Dhabi', 'UAE', 32, 'Active', 'Leadership track', 'C213', '2023-03-10', NOW(), 'Female', 'Strategist', 105000, 10, 'A', 4.6, 'Strategy'),
('Kenji Sato', 'kenji.sato@sony.co.jp', '9876034567', 'Tokyo', 'Tokyo', 'Japan', 30, 'Active', 'Cross-functional lead', 'C214', '2023-03-15', NOW(), 'Male', 'Product Manager', 95000, 6, 'A', 4.3, 'Product'),
('Julia Müller', 'julia.mueller@bosch.de', '9876045678', 'Berlin', 'Berlin', 'Germany', 35, 'Inactive', 'Moved internally', 'C215', '2023-03-20', NOW(), 'Female', 'Supply Chain Manager', 89000, 8, 'B', 3.7, 'Logistics'),
('Carlos Gomez', 'carlos.gomez@correo.com', '9876678901', 'Madrid', 'Madrid', 'Spain', 45, 'Inactive', 'On bench', 'C208', '2023-02-15', NOW(), 'Male', 'DevOps', 93000, 12, 'C', 3.6, 'DevOps'),
('Sara Lee', 'sara.lee@gmail.com', '9876234567', 'LA', 'California', 'USA', 31, 'Active', 'Promoted', 'C204', '2023-01-25', NOW(), 'Female', 'Consultant', 90000, 9, 'A', 4.4, 'Consulting'),
('Li Wei', 'li.wei@163.com', '9876456789', 'Beijing', 'Beijing', 'China', 29, 'Active', 'New joiner', 'C206', '2023-02-05', NOW(), 'Male', 'Developer', 67000, 4, 'B', 4.0, 'Tech'),
('Fatima Noor', 'fatima.noor@emirates.com', '9876023456', 'Abu Dhabi', 'Abu Dhabi', 'UAE', 32, 'Active', 'Leadership track', 'C213', '2023-03-10', NOW(), 'Female', 'Strategist', 105000, 10, 'A', 4.6, 'Strategy'),
('Emily Davis', 'emily.davis@protonmail.com', '9876789012', 'Toronto', 'Ontario', 'Canada', 33, 'Active', 'Team lead', 'C209', '2023-02-20', NOW(), 'Female', 'Team Lead', 99000, 11, 'A', 4.7, 'Operations');
SELECT * FROM Feed_3;
