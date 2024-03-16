USE sakila;

-- 1. Display all available tables in the Sakila database.

SHOW TABLES IN sakila;

-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve the following columns from their respective tables:
	-- 3.1 Titles of all films from the `film` table
    
SELECT title FROM film;

	-- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table

SELECT name FROM language;

    -- 3.3 List of first names of all employees from the `staff` table
    
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.

SELECT DISTINCT release_year FROM sakila.film;

-- 5. Counting records for database insights:
	-- 5.1 Determine the number of stores that the company has.

SELECT COUNT(store_id) FROM store;
    
	-- 5.2 Determine the number of employees that the company has.
    
SELECT COUNT(staff_id) FROM staff;

	-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(inventory_id) FROM inventory;
SELECT *,last_update - inventory_id AS films_available FROM sakila.inventory;

	-- 5.4 Determine the number of distinct last names of the actors in the database.
    
SELECT DISTINCT last_name FROM sakila.actor;
    
-- 6. Retrieve the 10 longest films.

SELECT length FROM sakila.film
LIMIT 10;

-- 7.  Use filtering techniques in order to:
	-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';