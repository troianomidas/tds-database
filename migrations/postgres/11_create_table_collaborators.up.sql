
CREATE TABLE IF NOT EXISTS PUBLIC.collaborators (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    group_name VARCHAR(255) NOT NULL,
    document VARCHAR(255),
    email VARCHAR(255),
    description TEXT,
    status INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
