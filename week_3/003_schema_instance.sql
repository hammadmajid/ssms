USE LibraryDB;

-- Schema vs Instance
-- Schema: definition (CREATE TABLE statements)
-- Instance: current state (SELECT * shows data)
SELECT * FROM Books;
SELECT * FROM Members;

-- 3) Modify schema: add YearPublished
ALTER TABLE Books
ADD YearPublished INT;

-- Updated schema
EXEC sp_help 'Books';