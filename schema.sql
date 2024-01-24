--This SQL file is the schema for the SQL database containing information in "new_york_listing_2024.csv"

--The Table "all_listings" is where all the data from the "new_york_listings_2024" is being imported to first.
/* Notes about table column names
    "number_of_reviews_ltm" is the amount of reviews a listing recieved in December 2023
    "reviews_per_month" is an average
    "calculated_host_listings" is the number of listings owned by a host
*/
CREATE TABLE "all_listings"(
    "id" SERIAL PRIMARY KEY, 
    "name" TEXT, 
    "host_id" INTEGER,
    "host_name" TEXT, 
    "neighborhood_group" TEXT,
    "neighborhood" TEXT,
    "latitude" FLOAT,
    "longitude" FLOAT,
    "room_type" TEXT,
    "price" DECIMAL,
    "minimum_nights" INTEGER,
    "number_of_reviews" INTEGER,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INTEGER,
    "availability_365" INTEGER,
    "number_of_reviews_ltm" INTEGER,
    "license" TEXT,
    "rating" DECIMAL,
    "bedrooms" DECIMAL,
    "beds" DECIMAL,
    "baths" DECIMAL
);

--This imports data from the csv file
.import --csv --skip 1 new_york_listings_2024.csv all_listings

/*The following five tables are to group listings by the borough they are located in
    Notes about table column names
    "neighborhood_groups" is excluded from these table.
    "number_of_reviews_ltm" is the amount of reviews a listing recieved in December 2023
    "reviews_per_month" is an average
    "calculated_host_listings" is the number of listings owned by a host
*/
CREATE TABLE "brooklyn"(
    "id" SERIAL PRIMARY KEY, 
    "name" TEXT, 
    "host_id" INTEGER,
    "host_name" TEXT, 
    "neighborhood" TEXT,
    "latitude" FLOAT,
    "longitude" FLOAT,
    "room_type" TEXT,
    "price" DECIMAL,
    "minimum_nights" INTEGER,
    "number_of_reviews" INTEGER,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INTEGER,
    "availability_365" INTEGER,
    "number_of_reviews_ltm" INTEGER,
    "license" TEXT,
    "rating" DECIMAL,
    "bedrooms" DECIMAL,
    "beds" DECIMAL,
    "baths" DECIMAL
);

CREATE TABLE "bronx"(
    "id" SERIAL PRIMARY KEY, 
    "name" TEXT, 
    "host_id" INTEGER,
    "host_name" TEXT, 
    "neighborhood" TEXT,
    "latitude" FLOAT,
    "longitude" FLOAT,
    "room_type" TEXT,
    "price" DECIMAL,
    "minimum_nights" INTEGER,
    "number_of_reviews" INTEGER,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INTEGER,
    "availability_365" INTEGER,
    "number_of_reviews_ltm" INTEGER,
    "license" TEXT,
    "rating" DECIMAL,
    "bedrooms" DECIMAL,
    "beds" DECIMAL,
    "baths" DECIMAL
);

CREATE TABLE "manhattan"(
    "id" SERIAL PRIMARY KEY, 
    "name" TEXT, 
    "host_id" INTEGER,
    "host_name" TEXT, 
    "neighborhood" TEXT,
    "latitude" FLOAT,
    "longitude" FLOAT,
    "room_type" TEXT,
    "price" DECIMAL,
    "minimum_nights" INTEGER,
    "number_of_reviews" INTEGER,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INTEGER,
    "availability_365" INTEGER,
    "number_of_reviews_ltm" INTEGER,
    "license" TEXT,
    "rating" DECIMAL,
    "bedrooms" DECIMAL,
    "beds" DECIMAL,
    "baths" DECIMAL
);

CREATE TABLE "queens"(
    "id" SERIAL PRIMARY KEY, 
    "name" TEXT, 
    "host_id" INTEGER,
    "host_name" TEXT, 
    "neighborhood" TEXT,
    "latitude" FLOAT,
    "longitude" FLOAT,
    "room_type" TEXT,
    "price" DECIMAL,
    "minimum_nights" INTEGER,
    "number_of_reviews" INTEGER,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INTEGER,
    "availability_365" INTEGER,
    "number_of_reviews_ltm" INTEGER,
    "license" TEXT,
    "rating" DECIMAL,
    "bedrooms" DECIMAL,
    "beds" DECIMAL,
    "baths" DECIMAL
);

CREATE TABLE "staten_island"(
    "id" SERIAL PRIMARY KEY, 
    "name" TEXT, 
    "host_id" INTEGER,
    "host_name" TEXT, 
    "neighborhood" TEXT,
    "latitude" FLOAT,
    "longitude" FLOAT,
    "room_type" TEXT,
    "price" DECIMAL,
    "minimum_nights" INTEGER,
    "number_of_reviews" INTEGER,
    "last_review" DATE,
    "reviews_per_month" FLOAT,
    "calculated_host_listings_count" INTEGER,
    "availability_365" INTEGER,
    "number_of_reviews_ltm" INTEGER,
    "license" TEXT,
    "rating" DECIMAL,
    "bedrooms" DECIMAL,
    "beds" DECIMAL,
    "baths" DECIMAL
);

-- The following commands are for populating the Brooklyn, Bronx, Manhattan, Queens, and Staten Island Tables
INSERT INTO "brooklyn" ("id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths")
SELECT "id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths"
FROM "all_listings"
WHERE "neighborhood_group" = 'Brooklyn';

INSERT INTO "bronx" ("id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths")
SELECT "id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths"
FROM "all_listings"
WHERE "neighborhood_group" = 'Bronx';

INSERT INTO "manhattan" ("id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths")
SELECT "id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths"
FROM "all_listings"
WHERE "neighborhood_group" = 'Manhattan';

INSERT INTO "queens" ("id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths")
SELECT "id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths"
FROM "all_listings"
WHERE "neighborhood_group" = 'Queens';

INSERT INTO "staten_island" ("id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths")
SELECT "id", "name", "host_id", "host_name", "neighborhood", "latitude", "longitude",
"room_type", "price", "minimum_nights", "number_of_reviews", "last_review", "reviews_per_month", "calculated_host_listings_count",
"availability_365", "number_of_reviews", "license", "rating", "bedrooms", "beds", "baths"
FROM "all_listings"
WHERE "neighborhood_group" = 'Staten Island';

--This is for analyzing data related to hosts

CREATE TABLE "hosts" (
    "host_id" INTEGER PRIMARY KEY,
    "host_name" TEXT,
    "host_listings_count" INTEGER,
    "host_total_reviews" INTEGER
);

--This populates the hosts table

INSERT INTO "hosts" ("host_id", "host_name", "host_listings_count", "host_total_reviews")
SELECT "host_id", "host_name", "calculated_host_listings_count", SUM("number_of_reviews")
FROM "all_listings"
GROUP BY "host_id";

--This is for analyzing neighborhoods within the boroughs

CREATE TABLE "neighborhoods" (
    "neighborhood" TEXT PRIMARY KEY,
    "average_price" DECIMAL,
    "number_of_reviews" INTEGER
);

 --This is for populating the neighborhoods table
INSERT INTO "neighborhoods" ("neighborhood", "average_price", "number_of_reviews")
SELECT "neighborhood", AVG("price"), SUM("number_of_reviews")
FROM "all_listings"
GROUP BY "neighborhood";

--These indexes are to help speed up searches for listing names, price and ratings

CREATE INDEX "brooklyn_listing_index" ON "brooklyn" ("name", "price", "rating");
CREATE INDEX "bronx_listing_index" ON "bronx" ("name", "price", "rating");
CREATE INDEX "manhattan_listing_index" ON "manhattan" ("name", "price", "rating");
CREATE INDEX "queens_listing_index" ON "queens" ("name", "price", "rating");
CREATE INDEX "staten_island_listing_index" ON "staten_island" ("name", "price", "rating");