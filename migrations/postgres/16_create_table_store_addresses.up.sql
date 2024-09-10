
CREATE TABLE IF NOT EXISTS PUBLIC.store_addresses (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    zipcode VARCHAR(10) NOT NULL,
    line1 VARCHAR(100) NOT NULL,
    line2 VARCHAR(45),
    number VARCHAR(45) NOT NULL,
    neighborhood VARCHAR(45) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
