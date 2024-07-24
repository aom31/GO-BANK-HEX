CREATE TABLE IF NOT EXISTS customers (
    customer_id INT NOT NULL,
    name VARCHAR(255),
    date_of_birth DATE,
    city VARCHAR(255),
    zip_code INT,
    status BOOLEAN

);
