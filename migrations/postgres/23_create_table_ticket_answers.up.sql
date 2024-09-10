
CREATE TABLE IF NOT EXISTS PUBLIC.ticket_answers (
    id SERIAL PRIMARY KEY,
    ticket_id INT NOT NULL,
    body TEXT NOT NULL,
    is_store_answer BOOLEAN NOT NULL,
    sort INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);
