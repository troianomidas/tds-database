
CREATE TABLE IF NOT EXISTS PUBLIC.product_categories (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    description TEXT,
    status INT NOT NULL,
    sort INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
