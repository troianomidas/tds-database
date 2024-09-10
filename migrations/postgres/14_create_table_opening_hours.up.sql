
CREATE TABLE IF NOT EXISTS PUBLIC.opening_hours (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    day_of_week VARCHAR(50),
    begin_at VARCHAR(50),
    end_at VARCHAR(50),
    schedule_type INT NOT NULL,
    sort INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
