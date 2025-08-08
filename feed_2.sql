CREATE TABLE feed_2 (
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
    occupation VARCHAR(50)
);
INSERT INTO feed_2 (name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation) VALUES
-- Unique rows
('Amit Verma', 'amit.verma@gmail.com', '9876543210', 'Delhi', 'Delhi', 'India', 34, 'Active', 'Good performer', 'C101', '2023-01-10', NOW(), 'Male', 'Engineer'),
('Riya Sharma', 'riya.sharma@yahoo.com', '9876501234', 'Mumbai', 'Maharashtra', 'India', 28, 'Inactive', 'On leave', 'C102', '2023-01-15', NOW(), 'Female', 'HR'),
('John Smith', 'john.smith@outlook.com', '9876123456', 'New York', 'NY', 'USA', 42, 'Active', 'Top contributor', 'C103', '2023-01-20', NOW(), 'Male', 'Manager'),
('Sara Lee', 'sara.lee@gmail.com', '9876234567', 'Los Angeles', 'California', 'USA', 31, 'Active', 'Promoted', 'C104', '2023-01-25', NOW(), 'Female', 'Consultant'),
('Mohammed Khan', 'm.khan@hotmail.com', '9876345678', 'Dubai', 'Dubai', 'UAE', 38, 'Inactive', 'Improvement needed', 'C105', '2023-02-01', NOW(), 'Male', 'Finance Analyst'),
('Li Wei', 'li.wei@163.com', '9876456789', 'Beijing', 'Beijing', 'China', 29, 'Active', 'New joiner', 'C106', '2023-02-05', NOW(), 'Male', 'Developer'),
('Priya Nair', 'priya.nair@gmail.com', '9876567890', 'Bangalore', 'Karnataka', 'India', 26, 'Active', 'Great reviews', 'C107', '2023-02-10', NOW(), 'Female', 'QA'),
('Carlos Gomez', 'carlos.gomez@correo.com', '9876678901', 'Madrid', 'Madrid', 'Spain', 45, 'Inactive', 'On bench', 'C108', '2023-02-15', NOW(), 'Male', 'DevOps'),
('Emily Davis', 'emily.davis@protonmail.com', '9876789012', 'Toronto', 'Ontario', 'Canada', 33, 'Active', 'Team lead', 'C109', '2023-02-20', NOW(), 'Female', 'Team Lead'),
('Rajesh Iyer', 'rajesh.iyer@gmail.com', '9876890123', 'Chennai', 'Tamil Nadu', 'India', 40, 'Active', 'Client-facing', 'C110', '2023-02-25', NOW(), 'Male', 'Sales'),
('Anita Desai', 'anita.desai@gmail.com', '9876901234', 'Pune', 'Maharashtra', 'India', 36, 'Active', 'Strong performer', 'C111', '2023-03-01', NOW(), 'Female', 'Marketing'),
('David Chen', 'david.chen@alibaba.com', '9876012345', 'Shanghai', 'Shanghai', 'China', 39, 'Inactive', 'Switched team', 'C112', '2023-03-05', NOW(), 'Male', 'Data Analyst'),

-- Duplicates (repeat of 3 earlier rows)
('Riya Sharma', 'riya.sharma@yahoo.com', '9876501234', 'Mumbai', 'Maharashtra', 'India', 28, 'Inactive', 'On leave', 'C102', '2023-01-15', NOW(), 'Female', 'HR'),
('Carlos Gomez', 'carlos.gomez@correo.com', '9876678901', 'Madrid', 'Madrid', 'Spain', 45, 'Inactive', 'On bench', 'C108', '2023-02-15', NOW(), 'Male', 'DevOps'),
('David Chen', 'david.chen@alibaba.com', '9876012345', 'Shanghai', 'Shanghai', 'China', 39, 'Inactive', 'Switched team', 'C112', '2023-03-05', NOW(), 'Male', 'Data Analyst');
select * from feed_2;