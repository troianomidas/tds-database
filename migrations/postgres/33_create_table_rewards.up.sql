
CREATE TABLE IF NOT EXISTS PUBLIC.rewards (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    points_cost DECIMAL(18, 2) NOT NULL,
    description TEXT,
    status INT NOT NULL,
    image_url VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
