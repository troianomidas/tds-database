
CREATE TABLE IF NOT EXISTS PUBLIC.announcements (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    title VARCHAR(255),
    description TEXT,
    icon VARCHAR(255),
    type INT NOT NULL,
    status INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
