CREATE TABLE IF NOT EXISTS accounts (
    account_id INT NOT NULL,
    customer_id INT,
    account_type VARCHAR(255),
    balance DECIMAL,
    created_at TIMESTAMP,
    status BOOLEAN

    
);