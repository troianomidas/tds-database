
CREATE TABLE IF NOT EXISTS PUBLIC.store_deliveries (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    has_withdraw BOOLEAN NOT NULL,
    has_delivery BOOLEAN NOT NULL,
    has_schedule BOOLEAN NOT NULL,
    has_delivery_area BOOLEAN NOT NULL,
    has_free_delivery BOOLEAN NOT NULL,
    free_delivery_from DECIMAL(18, 2) DEFAULT 0,
    delivery_time_min INT NOT NULL,
    delivery_time_max INT NOT NULL,
    withdraw_time_min INT NOT NULL,
    withdraw_time_max INT NOT NULL,
    delivery_fee DECIMAL(18, 2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
