
CREATE TABLE IF NOT EXISTS PUBLIC.customers (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    external_id varchar(255),
    name VARCHAR(40) NOT NULL,
    phone VARCHAR(11) NOT NULL,
    email VARCHAR(255),
    document VARCHAR(20),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id),
    CONSTRAINT unique_phone UNIQUE (phone)
);
