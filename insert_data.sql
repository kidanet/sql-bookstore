-- insert_data.sql
-- Insert books
INSERT INTO books (title, author, price) VALUES
    ('The Martian', 'Andy Weir', 12.99),
    ('Dune', 'Frank Herbert', 15.50),
    ('1984', 'George Orwell', 9.99);

-- Insert sales
INSERT INTO sales (book_id, quantity, sale_date) VALUES
    (1, 3, '2025-03-01'),
    (2, 1, '2025-03-01'),
    (1, 2, '2025-03-02');
