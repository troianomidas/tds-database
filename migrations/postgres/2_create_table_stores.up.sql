
CREATE TABLE IF NOT EXISTS PUBLIC.stores (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(65) NOT NULL,
    external_id varchar(255) NOT NULL,
    description TEXT,
    phone VARCHAR(20),
    hostname VARCHAR(255),
    category VARCHAR(255),
    logo_url VARCHAR(255),
    banner_url VARCHAR(255),
    owner_name VARCHAR(65),
    owner_document VARCHAR(20),
    status INT NOT NULL,
    review_count INT DEFAULT 0,
    review_rate DOUBLE PRECISION DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL
);
