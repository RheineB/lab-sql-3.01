-- ACTIVITY 1 ---------
USE sakila;

-- 1. Drop column picture from staff.
ALTER TABLE staff
DROP COLUMN picture;

SELECT * FROM staff;


-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT * FROM staff;
SELECT * FROM customer
WHERE first_name= 'Tammy';

INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, last_update)
VALUES ( 'TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'TAMMY', '2006-02-15 04:57:20');

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
	-- You can use current date for the rental_date column in the rental table.
	-- Hint: Check the columns in the table rental and see what information you would need to add there.
	-- You can query those pieces of information. For eg., you would notice that you need customer_id information as well.
	-- To get that you can use the following query:
			select * from sakila.customer
			where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
	-- Use similar method to get inventory_id, film_id, and staff_id.4

SELECT * FROM film WHERE title = 'Academy Dinosaur';
SELECT * FROM staff WHERE first_name  = 'Mike' AND last_name  = 'Hillyer';

INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES (current_date, 3, 130, 0, 2,current_timestamp);

SELECT * FROM rental
WHERE customer_id = 130 AND inventory_id= 3;


-- ACTIVITY 2-----
-- DROP the film_text table, because it was unnecesary nor used in the past activities
-- MERGE payment and rental, it holds many similar columns
-- MERGE staff and store
