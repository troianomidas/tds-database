
CREATE TABLE IF NOT EXISTS PUBLIC.tickets (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    title VARCHAR(65) NOT NULL,
    body TEXT NOT NULL,
    status INT NOT NULL,
    has_store_answer BOOLEAN NOT NULL,
    has_admin_answer BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
