
CREATE TABLE IF NOT EXISTS PUBLIC.product_availabilities (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    day_of_week VARCHAR(20),
    begin_at VARCHAR(50),
    end_at VARCHAR(50),
    sort INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES PUBLIC.products(id)
);
