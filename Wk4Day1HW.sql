--Week 4 Day 1 HW-----

--Question 1: How many actors are there with the last name
--'Wahlberg'?

SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';

--Question 2: How many payments were made between 
--$3.99 and $5.99? 

SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3:What film does the store have the most of?
Select film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY film_id DESC;

--Question 4:How many customers have the last name 'William'?
SELECT first_name,last_name
FROM customer
WHERE last_name LIKE 'William';

--Question 5: What store employee sold the most rentals?--
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id;

--Question 6: How many different district names are there?--
SELECT district, COUNT(*)
FROM address
GROUP BY district
ORDER BY district;

--Question 7:What film has the most actors in it?--
SELECT actor_id, COUNT(*)
FROM film_actor
GROUP BY film_id;


--Question 8: From store_id1, how many customer have the
--last name ending with 'es'?
SELECT first_name,last_name
FROM customer
WHERE last_name LIKE '%es';

--Question 9: How many payment amounts(4.99, 5.99, etc) had a number
--of rentals above 250 customer for customers with ids between 
--380 and 430?

SELECT amount, COUNT (amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
ORDER BY customer_id DESC;


--Question 10: Within the film table, how many rating categories are 
--there? And what rating has the most movies total?

SELECT COUNT(category_id)
FROM film_category;

SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY rating DESC; 
