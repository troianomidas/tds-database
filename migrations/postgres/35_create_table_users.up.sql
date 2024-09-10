
CREATE TABLE IF NOT EXISTS PUBLIC.users (
    id SERIAL PRIMARY KEY,
    external_id varchar(255),
    email VARCHAR(255) NOT NULL,
    password VARCHAR(45) NOT NULL,
    last_access_at TIMESTAMP,
    public_ip VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL
);
