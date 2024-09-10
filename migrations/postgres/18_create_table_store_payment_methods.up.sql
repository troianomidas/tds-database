
CREATE TABLE IF NOT EXISTS PUBLIC.store_payment_methods (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    payment_method_id INT NOT NULL,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id),
    CONSTRAINT fk_payment_method FOREIGN KEY (payment_method_id) REFERENCES PUBLIC.payment_methods(id)
);
