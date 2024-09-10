
CREATE TABLE IF NOT EXISTS PUBLIC.user_addresses (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    line1 VARCHAR(255) NOT NULL,
    line2 VARCHAR(255),
    number VARCHAR(50) NOT NULL,
    neighborhood VARCHAR(255) NOT NULL,
    city_state VARCHAR(255) NOT NULL,
    zipcode VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES PUBLIC.users(id)
);
