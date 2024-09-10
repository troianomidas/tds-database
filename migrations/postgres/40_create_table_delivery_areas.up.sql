
CREATE TABLE IF NOT EXISTS PUBLIC.delivery_areas (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    name VARCHAR(255),
    fee DECIMAL(18, 2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
