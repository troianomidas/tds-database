
CREATE TABLE IF NOT EXISTS PUBLIC.product_extras (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    name VARCHAR(60) NOT NULL,
    min INT,
    max INT NOT NULL,
    is_required BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
