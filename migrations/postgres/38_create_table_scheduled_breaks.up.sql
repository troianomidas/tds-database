
CREATE TABLE IF NOT EXISTS PUBLIC.scheduled_breaks (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    title VARCHAR(255),
    start_at TIMESTAMP NOT NULL,
    end_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
