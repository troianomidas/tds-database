
CREATE TABLE IF NOT EXISTS PUBLIC.product_extra_matches (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    product_extra_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES PUBLIC.products(id),
    CONSTRAINT fk_product_extra FOREIGN KEY (product_extra_id) REFERENCES PUBLIC.product_extras(id)
);
