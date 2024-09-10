
CREATE TABLE IF NOT EXISTS PUBLIC.subscription_billings (
    id SERIAL PRIMARY KEY,
    subscription_id INT NOT NULL,
    charge_id INT NOT NULL,
    billet_link VARCHAR(255) NOT NULL,
    amount DECIMAL(18, 2) NOT NULL,
    status INT NOT NULL,
    expire_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_subscription FOREIGN KEY (subscription_id) REFERENCES PUBLIC.subscriptions(id)
);
