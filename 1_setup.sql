-- Create housing table
CREATE TABLE housing (
    image_id INT,
    street TEXT,
    city TEXT,
    n_city INT,
    bed INT,
    bath FLOAT,
    sqft INT,
    price INT
);

-- Load data from CSV
COPY housing(image_id, street, city, n_city, bed, bath, sqft, price)
FROM 'C:\SQL_SOCIAL_HOUSING\socal2.csv'
DELIMITER ','
CSV HEADER;