
CREATE TABLE IF NOT EXISTS PUBLIC.segments (
    id SERIAL PRIMARY KEY,
    "group" INT NOT NULL,
    group_name VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    value TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL
);
