
CREATE TABLE IF NOT EXISTS PUBLIC.rewards_system (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    order_id INT,
    customer_id INT,
    reward_id INT,
    valid_points DECIMAL(18, 2) NOT NULL,
    invalid_points DECIMAL(18, 2) NOT NULL,
    expiration_term TIMESTAMP,
    mov_type INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES PUBLIC.orders(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES PUBLIC.customers(id),
    CONSTRAINT fk_reward FOREIGN KEY (reward_id) REFERENCES PUBLIC.rewards(id)
);
