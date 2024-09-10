
CREATE TABLE IF NOT EXISTS PUBLIC.reviews (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    order_id INT NOT NULL,
    comment TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES PUBLIC.orders(id)
);
