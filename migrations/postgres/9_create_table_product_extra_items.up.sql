
CREATE TABLE IF NOT EXISTS PUBLIC.product_extra_items (
    id SERIAL PRIMARY KEY,
    product_extra_id INT NOT NULL,
    image_url VARCHAR(255),
    name VARCHAR(40) NOT NULL,
    description VARCHAR(60),
    unit_price DECIMAL(18, 2) NOT NULL,
    status INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_product_extra FOREIGN KEY (product_extra_id) REFERENCES PUBLIC.product_extras(id)
);
