--This document contains sample queries that may be run on the database.db file

--Returns the most popular listings in NYC
SELECT * FROM "all_listings"
ORDER BY "number_of_reviews" DESC
LIMIT 10;

--Ranks the Boroughs in order of the guest traffic they've had
SELECT "neighborhood_group" AS 'Borough' FROM "all_listings"
GROUP BY "neighborhood_group"
ORDER BY "number_of_reviews" DESC;

--Returns most popular listings in the Bronx
SELECT * FROM "Bronx"
ORDER BY 'number_of-reviews' DESC
LIMIT 10;

--Returns most popular listings in the Brooklyn
SELECT * FROM "Brooklyn"
ORDER BY 'number_of-reviews' DESC
LIMIT 10;

-- Returns all the listings in Sunnyside Queens that has a numerical rating
SELECT * FROM "filtered_queens_ratings"
WHERE "neighborhood" = 'Sunnyside';

-- Returns the most expensive neighborhoods in NYC
SELECT "neighborhood" FROM "neighborhoods"
ORDER BY "average_price" DESC
LIMIT 10;

-- Returns the number of hosts who do not have a rental license or are exempt
SELECT COUNT(DISTINCT "host_id") FROM "all_listings"
WHERE "license" = 'No License' OR "license" = 'Exempt';

