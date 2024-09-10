
CREATE TABLE IF NOT EXISTS PUBLIC.subscriptions (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    amount DECIMAL(18, 2) NOT NULL,
    plan VARCHAR(255),
    status INT NOT NULL,
    referral_id INT,
    next_due_date TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
