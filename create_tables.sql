-- create_tables.sql
-- Create a table for books
CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    price REAL NOT NULL
);

-- Create a table for sales
CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id INTEGER,
    quantity INTEGER NOT NULL,
    sale_date TEXT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(id)
);
