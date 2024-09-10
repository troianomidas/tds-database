
CREATE TABLE IF NOT EXISTS PUBLIC.order_shipping_addresses (
    id SERIAL PRIMARY KEY,
    line1 VARCHAR(255),
    line2 VARCHAR(255),
    number VARCHAR(50),
    neighborhood VARCHAR(255),
    city_state VARCHAR(255),
    zipcode VARCHAR(20),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL
);
