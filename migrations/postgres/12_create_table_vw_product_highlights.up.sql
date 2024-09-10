
CREATE TABLE IF NOT EXISTS PUBLIC.vw_product_highlights (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    store VARCHAR(255),
    product VARCHAR(255),
    description TEXT,
    image_url VARCHAR(255),
    views INT NOT NULL,
    unit_price DECIMAL(18, 2) NOT NULL,
    discount_type INT NOT NULL,
    discount DECIMAL(18, 2) NOT NULL,
    begin_at VARCHAR(50),
    end_at VARCHAR(50)
);
