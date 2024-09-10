
CREATE TABLE IF NOT EXISTS PUBLIC.payment_methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    is_online BOOLEAN NOT NULL,
    fee DECIMAL(18, 2) NOT NULL,
    img_url VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL
);
