CREATE TABLE feed_1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    age INT,
    status VARCHAR(20),
    comments TEXT
);
INSERT INTO feed_1 (name, email, phone, city, state, country, age, status, comments) VALUES
('Amit Verma', 'amit.verma@gmail.com', '9876543210', 'Delhi', 'Delhi', 'India', 34, 'Active', 'Good performer'),
('Riya Sharma', 'riya.sharma@yahoo.com', '9876501234', 'Mumbai', 'Maharashtra', 'India', 28, 'Inactive', 'On long leave'),
('John Smith', 'john.smith@outlook.com', '9876123456', 'New York', 'NY', 'USA', 42, 'Active', 'Top contributor'),
('Sara Lee', 'sara.lee@gmail.com', '9876234567', 'Los Angeles', 'California', 'USA', 31, 'Active', 'Recently promoted'),
('Mohammed Khan', 'm.khan@hotmail.com', '9876345678', 'Dubai', 'Dubai', 'UAE', 38, 'Inactive', 'Needs improvement'),
('Li Wei', 'li.wei@163.com', '9876456789', 'Beijing', 'Beijing', 'China', 29, 'Active', 'New joiner'),
('Priya Nair', 'priya.nair@gmail.com', '9876567890', 'Bangalore', 'Karnataka', 'India', 26, 'Active', 'Excellent feedback'),
('Carlos Gomez', 'carlos.gomez@correo.com', '9876678901', 'Madrid', 'Madrid', 'Spain', 45, 'Inactive', 'Pending project'),
('Emily Davis', 'emily.davis@protonmail.com', '9876789012', 'Toronto', 'Ontario', 'Canada', 33, 'Active', 'Team lead'),
('Rajesh Iyer', 'rajesh.iyer@gmail.com', '9876890123', 'Chennai', 'Tamil Nadu', 'India', 40, 'Active', 'Client-facing role');
SELECT * FROM feed_1;
