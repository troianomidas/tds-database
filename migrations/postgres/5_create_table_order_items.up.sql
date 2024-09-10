
CREATE TABLE IF NOT EXISTS PUBLIC.order_items (
    id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    external_id varchar(255) NOT NULL,
    external_parent_id VARCHAR(255),
    item VARCHAR(255),
    description TEXT,
    product_id INT NOT NULL,
    amount INT NOT NULL,
    unit_value DECIMAL(18, 2) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES PUBLIC.orders(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES PUBLIC.products(id)
);
