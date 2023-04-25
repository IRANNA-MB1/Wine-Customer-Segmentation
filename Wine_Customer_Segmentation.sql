
--Wine Customer Segmentation--

use [SQL Portfolio Projects];

--1. What is the distribution of customer segments in the dataset?
SELECT customer_segment, COUNT(*) AS Count
FROM WineCustomers
GROUP BY customer_segment
ORDER BY Count DESC

--2. What is the average value of each wine attribute for each customer segment?
SELECT customer_segment, AVG(alcohol) AS avg_alcohol, AVG(malic_acid) AS avg_malic_acid, AVG(ash) AS avg_ash, AVG(ash_alcanity) AS avg_ash_alcanity, AVG(magnesium) AS avg_magnesium, AVG(total_phenols) AS avg_total_phenols, AVG(flavanoids) AS avg_flavanoids, AVG(nonflavanoid_phenols) AS avg_nonflavanoid_phenols, AVG(proanthocyanins) AS avg_proanthocyanins, AVG(color_intensity) AS avg_color_intensity, AVG(hue) AS avg_hue, AVG(od280) AS avg_od280, AVG(proline) AS avg_proline
FROM WineCustomers
GROUP BY customer_segment

--3. What is the maximum value of each wine attribute for each customer segment?
SELECT customer_segment, MAX(alcohol) AS max_alcohol, MAX(malic_acid) AS max_malic_acid, MAX(ash) AS max_ash, MAX(ash_alcanity) AS max_ash_alcanity, MAX(magnesium) AS max_magnesium, MAX(total_phenols) AS max_total_phenols, MAX(flavanoids) AS max_flavanoids, MAX(nonflavanoid_phenols) AS max_nonflavanoid_phenols, MAX(proanthocyanins) AS max_proanthocyanins, MAX(color_intensity) AS max_color_intensity, MAX(hue) AS max_hue, MAX(od280) AS max_od280, MAX(proline) AS max_proline
FROM WineCustomers
GROUP BY customer_segment

--4. What is the average alcohol content of each customer segment?
SELECT customer_segment, AVG(alcohol) AS avg_alcohol
FROM WineCustomers
GROUP BY customer_segment;

--5. Which customer segment has the highest average magnesium level?
SELECT customer_segment, MAX(magnesium) AS max_magnesium
FROM WineCustomers
GROUP BY customer_segment
ORDER BY max_magnesium DESC;

--6. How many customers are in each customer segment?
SELECT customer_segment, COUNT(*) AS customer_count
FROM WineCustomers
GROUP BY customer_segment;

--7. Which customer segment has the highest average total phenols level?
SELECT customer_segment, MAX(total_phenols) AS max_total_phenols
FROM WineCustomers
GROUP BY customer_segment
ORDER BY max_total_phenols DESC;

--8. What is the range of magnesium levels for each customer segment?
SELECT customer_segment, MIN(magnesium) AS min_magnesium, MAX(magnesium) AS max_magnesium
FROM WineCustomers
GROUP BY customer_segment;

--9. What is the average hue value for customers with an alcohol content greater than 13?
SELECT AVG(hue) AS avg_hue
FROM WineCustomers
WHERE alcohol > 13;

--10. Which customer segment has the highest average flavanoid content?
SELECT customer_segment, MAX(flavanoids) AS max_flavanoids
FROM WineCustomers
GROUP BY customer_segment
ORDER BY max_flavanoids DESC;

--11. What is the average malic acid content for customers with a proline level greater than 1000?
SELECT AVG(malic_acid) AS avg_malic_acid
FROM WineCustomers
WHERE proline > 1000;

--12. Which customer segment has the lowest average ash level?
SELECT customer_segment, MIN(ash) AS min_ash
FROM WineCustomers
GROUP BY customer_segment
ORDER BY min_ash ASC;

--13. What is the average proanthocyanins level for customers with a magnesium level between 95 and 105?
SELECT AVG(proanthocyanins) AS avg_proanthocyanins
FROM WineCustomers
WHERE magnesium BETWEEN 95 AND 105;

--14. Which customer segment has the highest average od280 value?
SELECT customer_segment, MAX(od280) AS max_od280
FROM WineCustomers
GROUP BY customer_segment
ORDER BY max_od280 DESC;

--15. What is the average nonflavanoid phenols level for customers with a color intensity level greater than 5?
SELECT AVG(nonflavanoid_phenols) AS avg_nonflavanoid_phenols
FROM WineCustomers
WHERE color_intensity > 5;

--16. Which customer segment has the highest average proline level?
SELECT customer_segment, MAX(proline) AS max_proline
FROM WineCustomers
GROUP BY customer_segment
ORDER BY max_proline DESC;

--17. Which customer segment has the highest average color intensity?
SELECT customer_segment, AVG(color_intensity) as avg_color_intensity
FROM WineCustomers
GROUP BY customer_segment
ORDER BY avg_color_intensity DESC;


