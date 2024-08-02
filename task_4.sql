USE information_schema;
SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_KEY, 
    COLUMN_DEFAULT, 
    EXTRA
FROM columns
WHERE TABLE_SCHEMA = 'alx_book_store'
AND TABLE_NAME='books';



