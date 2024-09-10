
CREATE TABLE IF NOT EXISTS PUBLIC.review_segments (
    id SERIAL PRIMARY KEY,
    review_id INT NOT NULL,
    segment_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_review FOREIGN KEY (review_id) REFERENCES PUBLIC.reviews(id),
    CONSTRAINT fk_segment FOREIGN KEY (segment_id) REFERENCES PUBLIC.segments(id)
);
