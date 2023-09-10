-- MySQL 5.x
-- Get real row count from tables

-- Step-1
-- First, generate query using this script below
SELECT CONCAT(
    'SELECT "', 
    table_name, 
    '" AS table_name, COUNT(*) AS exact_row_count FROM `', 
    table_schema,
    '`.`',
    table_name, 
    '` UNION '
) 
FROM INFORMATION_SCHEMA.TABLES 
WHERE table_schema = 'your_schema';

-- Step-2
-- Execute generated query
