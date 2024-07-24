CREATE TABLE IF NOT EXISTS customers (
    customer_id int,
    name varchar(255),
    date_of_birth date,
    city varchar(255),
    zip_code int,
    status bool
);