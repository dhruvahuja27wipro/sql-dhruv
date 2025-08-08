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
