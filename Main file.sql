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

DROP PROCEDURE IF EXISTS populate_feed;

CREATE OR REPLACE PROCEDURE populate_feed(IN feed_name VARCHAR(50), IN row_count INT)
LANGUAGE plpgsql
AS $$
DECLARE
    i INT := 0;
    sql_text TEXT;
BEGIN
    WHILE i < row_count LOOP
        IF feed_name = 'feed_1' THEN
            sql_text := FORMAT(
                'INSERT INTO feed_1 (name, email, phone, city, state, country, age, status, comments)
                 VALUES (''Name_%s'', ''user%s@example.com'', ''%s'', ''City_%s'', ''State_%s'', ''India'', %s,
                         CASE WHEN %s %% 2 = 0 THEN ''Active'' ELSE ''Inactive'' END,
                         ''Comment_%s'')',
                i, i, '98765' || LPAD(i::TEXT, 5, '0'), i, i, (20 + FLOOR(random() * 40))::INT, i, i
            );

        ELSIF feed_name = 'feed_2' THEN
            sql_text := FORMAT(
                'INSERT INTO feed_2 (name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation)
                 VALUES (''Name_%s'', ''user%s@example.com'', ''%s'', ''City_%s'', ''State_%s'', ''India'', %s,
                         CASE WHEN %s %% 2 = 0 THEN ''Active'' ELSE ''Inactive'' END,
                         ''Comment_%s'', ''C%s'', CURRENT_DATE - INTERVAL ''%s days'', CURRENT_TIMESTAMP,
                         CASE WHEN %s %% 2 = 0 THEN ''Male'' ELSE ''Female'' END, ''Occupation_%s'')',
                i, i, '98765' || LPAD(i::TEXT, 5, '0'), i, i, (20 + FLOOR(random() * 40))::INT, i, i, i, (i * 10) % 1000, i, i
            );

        ELSIF feed_name = 'feed_3' THEN
            sql_text := FORMAT(
                'INSERT INTO feed_3 (name, email, phone, city, state, country, age, status, comments,
                                     code, created_at, updated_at, gender, occupation, salary,
                                     experience, grade, rating, department)
                 VALUES (''Name_%s'', ''user%s@example.com'', ''%s'', ''City_%s'', ''State_%s'', ''India'', %s,
                         CASE WHEN %s %% 2 = 0 THEN ''Active'' ELSE ''Inactive'' END, ''Comment_%s'',
                         ''C%s'', CURRENT_DATE - INTERVAL ''%s days'', CURRENT_TIMESTAMP,
                         CASE WHEN %s %% 2 = 0 THEN ''Male'' ELSE ''Female'' END, ''Occupation_%s'',
                         ROUND((30000 + random() * 50000)::NUMERIC, 2),
                         FLOOR(random() * 20),
                         ''G'' || FLOOR(random() * 5),
                         ROUND((1 + random() * 4)::NUMERIC, 1),
                         ''Dept_'' || FLOOR(random() * 5))',
                i, i, '98765' || LPAD(i::TEXT, 5, '0'), i, i, (20 + FLOOR(random() * 40))::INT, i, i,
                i, (i * 10) % 1000, i, i
            );
        END IF;

        EXECUTE sql_text;
        i := i + 1;
    END LOOP;
END;
$$;

CALL populate_feed('feed_1', 10);
CALL populate_feed('feed_2', 15);
CALL populate_feed('feed_3', 20);

SELECT * FROM feed_1;
SELECT * FROM feed_2;
SELECT * FROM feed_3;


SELECT *
FROM feed_1
WHERE (name, email, phone, city, state, country, age, status, comments) IN (
    SELECT name, email, phone, city, state, country, age, status, comments
    FROM feed_1
    GROUP BY name, email, phone, city, state, country, age, status, comments
    HAVING COUNT(*) > 1
);
SELECT *
FROM feed_2
WHERE (name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation) IN (
    SELECT name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
    FROM feed_2
    GROUP BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
    HAVING COUNT(*) > 1
)
ORDER BY name, email;

SELECT *
FROM feed_3
WHERE (name, email, phone, city, state, country, age, status, comments,
       code, created_at, updated_at, gender, occupation, salary,
       experience, grade, rating, department) IN (
    SELECT name, email, phone, city, state, country, age, status, comments,
           code, created_at, updated_at, gender, occupation, salary,
           experience, grade, rating, department
    FROM feed_3
    GROUP BY name, email, phone, city, state, country, age, status, comments,
             code, created_at, updated_at, gender, occupation, salary,
             experience, grade, rating, department
    HAVING COUNT(*) > 1
)
ORDER BY name, email;


DROP TABLE IF EXISTS duplicates_feed_2;

CREATE TABLE duplicates_feed_2 AS
SELECT *
FROM feed_2
WHERE (name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation) IN (
    SELECT name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
    FROM feed_2
    GROUP BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
    HAVING COUNT(*) > 1
);
DROP TABLE IF EXISTS duplicates_feed_3;

CREATE TABLE duplicates_feed_3 AS
SELECT *
FROM feed_3
WHERE (name, email, phone, city, state, country, age, status, comments,
       code, created_at, updated_at, gender, occupation, salary,
       experience, grade, rating, department) IN (
    SELECT name, email, phone, city, state, country, age, status, comments,
           code, created_at, updated_at, gender, occupation, salary,
           experience, grade, rating, department
    FROM feed_3
    GROUP BY name, email, phone, city, state, country, age, status, comments,
             code, created_at, updated_at, gender, occupation, salary,
             experience, grade, rating, department
    HAVING COUNT(*) > 1
);
SELECT * FROM duplicates_feed_2;
SELECT * FROM duplicates_feed_3;


SELECT name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation,
       COUNT(*) AS dup_count
FROM feed_2
GROUP BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
HAVING COUNT(*) > 1;
WITH ranked_duplicates AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
               ORDER BY id
           ) AS rn
    FROM feed_2
)
DELETE FROM feed_2
WHERE id IN (
    SELECT id
    FROM ranked_duplicates
    WHERE rn > 1
);
SELECT name, email, phone, city, state, country, age, status, comments,
       code, created_at, updated_at, gender, occupation, salary,
       experience, grade, rating, department,
       COUNT(*) AS dup_count
FROM feed_3
GROUP BY name, email, phone, city, state, country, age, status, comments,
         code, created_at, updated_at, gender, occupation, salary,
         experience, grade, rating, department
HAVING COUNT(*) > 1;
WITH ranked_duplicates AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY name, email, phone, city, state, country, age, status, comments,
                            code, created_at, updated_at, gender, occupation, salary,
                            experience, grade, rating, department
               ORDER BY id
           ) AS rn
    FROM feed_3
)
DELETE FROM feed_3
WHERE id IN (
    SELECT id
    FROM ranked_duplicates
    WHERE rn > 1
);
SELECT name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation,
       COUNT(*) AS dup_count
FROM feed_2
GROUP BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
HAVING COUNT(*) > 1;

SELECT name, email, phone, city, state, country, age, status, comments,
       code, created_at, updated_at, gender, occupation, salary,
       experience, grade, rating, department,
       COUNT(*) AS dup_count
FROM feed_3
GROUP BY name, email, phone, city, state, country, age, status, comments,
         code, created_at, updated_at, gender, occupation, salary,
         experience, grade, rating, department
HAVING COUNT(*) > 1;


DROP PROCEDURE IF EXISTS clean_duplicates_feed_2;

CREATE OR REPLACE PROCEDURE clean_duplicates_feed_2()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Step 1: Create table for duplicates
    DROP TABLE IF EXISTS duplicates_feed_2;

    CREATE TABLE duplicates_feed_2 AS
    SELECT *
    FROM feed_2
    WHERE (name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation) IN (
        SELECT name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
        FROM feed_2
        GROUP BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
        HAVING COUNT(*) > 1
    );

    -- Step 2: Delete all but one
    WITH ranked_duplicates AS (
        SELECT *,
               ROW_NUMBER() OVER (
                   PARTITION BY name, email, phone, city, state, country, age, status, comments, code, created_at, updated_at, gender, occupation
                   ORDER BY id
               ) AS rn
        FROM feed_2
    )
    DELETE FROM feed_2
    WHERE id IN (
        SELECT id
        FROM ranked_duplicates
        WHERE rn > 1
    );
END;
$$;
CALL clean_duplicates_feed_2();

DROP PROCEDURE IF EXISTS clean_duplicates_feed_3;

CREATE OR REPLACE PROCEDURE clean_duplicates_feed_3()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Step 1: Drop and recreate duplicates table
    DROP TABLE IF EXISTS duplicates_feed_3;

    CREATE TABLE duplicates_feed_3 AS
    SELECT *
    FROM feed_3
    WHERE (name, email, phone, city, state, country, age, status, comments,
           code, created_at, updated_at, gender, occupation, salary,
           experience, grade, rating, department) IN (
        SELECT name, email, phone, city, state, country, age, status, comments,
               code, created_at, updated_at, gender, occupation, salary,
               experience, grade, rating, department
        FROM feed_3
        GROUP BY name, email, phone, city, state, country, age, status, comments,
                 code, created_at, updated_at, gender, occupation, salary,
                 experience, grade, rating, department
        HAVING COUNT(*) > 1
    );

    -- Step 2: Delete all but one from duplicate groups
    WITH ranked_duplicates AS (
        SELECT *,
               ROW_NUMBER() OVER (
                   PARTITION BY name, email, phone, city, state, country, age, status, comments,
                                code, created_at, updated_at, gender, occupation, salary,
                                experience, grade, rating, department
                   ORDER BY id
               ) AS rn
        FROM feed_3
    )
    DELETE FROM feed_3
    WHERE id IN (
        SELECT id
        FROM ranked_duplicates
        WHERE rn > 1
    );
END;
$$;
CALL clean_duplicates_feed_3();


DROP TABLE IF EXISTS feed_comparison;

CREATE TABLE feed_comparison AS
SELECT
    f1.id AS row_id,
    f1.name AS feed1_name,
    f2.name AS feed2_name,
    f3.name AS feed3_name,

    -- Comparison result for feed 2
    CASE
        WHEN f1.name = f2.name AND f1.email = f2.email AND f1.phone = f2.phone THEN 'Match_Feed2'
        ELSE 'Mismatch_Feed2'
    END AS feed2_compare,

    -- Comparison result for feed 3
    CASE
        WHEN f1.name = f3.name AND f1.email = f3.email AND f1.phone = f3.phone THEN 'Match_Feed3'
        ELSE 'Mismatch_Feed3'
    END AS feed3_compare

FROM feed_1 f1
LEFT JOIN feed_2 f2 ON f1.name = f2.name AND f1.email = f2.email AND f1.phone = f2.phone
LEFT JOIN feed_3 f3 ON f1.name = f3.name AND f1.email = f3.email AND f1.phone = f3.phone;
SELECT * FROM feed_comparison;
