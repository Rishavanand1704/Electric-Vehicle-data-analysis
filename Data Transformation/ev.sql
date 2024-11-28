SELECT * FROM ev;

-- Handling missing values

SELECT weight_capacity_kg
FROM ev
WHERE weight_capacity_kg IS NULL
or weight_capacity_kg = 0 ;

-- filling null and 0 values with average

SET SQL_SAFE_UPDATES = 0; 

WITH avg_weight AS (
    SELECT ROUND(AVG(weight_capacity_kg), 0) AS average_weight
    FROM ev
    WHERE weight_capacity_kg > 0
)
UPDATE ev
SET weight_capacity_kg = (SELECT average_weight FROM avg_weight)
WHERE weight_capacity_kg = 0
 or weight_capacity_kg is null;

SET SQL_SAFE_UPDATES = 1;

SELECT weight_capacity_kg  FROM ev;

-- Dropping Rows Where price_dollars is '$0.00'

SELECT *
FROM ev
WHERE price_dollars IS NULL
or price_dollars = '$0.00' ;

SET SQL_SAFE_UPDATES = 0; 

DELETE FROM ev
WHERE price_dollars IS NULL
or price_dollars = '$0.00' ;

SET SQL_SAFE_UPDATES = 1;

SELECT price_dollars  FROM ev;

-- checking for duplicates

SELECT brand, model, COUNT(*)
FROM ev
GROUP BY brand, model
HAVING COUNT(*) > 1;

SET SQL_SAFE_UPDATES = 0; 

DELETE t1
FROM ev t1
JOIN (
    SELECT MIN(row_id) AS id, model
    FROM ev
    GROUP BY model
    HAVING COUNT(*) > 1
) t2
ON t1.model = t2.model
WHERE t1.row_id != t2.id;

SET SQL_SAFE_UPDATES = 1;

select * from ev;