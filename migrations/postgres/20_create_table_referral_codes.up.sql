
CREATE TABLE IF NOT EXISTS PUBLIC.referral_codes (
    id SERIAL PRIMARY KEY,
    code VARCHAR(255),
    seller VARCHAR(255),
    discount DECIMAL(18, 2) NOT NULL,
    valid_until TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL
);
