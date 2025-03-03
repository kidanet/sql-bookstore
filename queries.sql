-- queries.sql
-- 1. Total revenue from all sales
SELECT SUM(b.price * s.quantity) AS total_revenue
FROM books b
JOIN sales s ON b.id = s.book_id;

-- 2. Best-selling book by quantity
SELECT b.title, SUM(s.quantity) AS total_sold
FROM books b
JOIN sales s ON b.id = s.book_id
GROUP BY b.id, b.title
ORDER BY total_sold DESC
LIMIT 1;

-- 3. Sales per day
SELECT sale_date, SUM(s.quantity) AS books_sold
FROM sales s
GROUP BY sale_date;
