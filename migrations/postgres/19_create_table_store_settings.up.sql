
CREATE TABLE IF NOT EXISTS PUBLIC.store_settings (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    external_id varchar(255),
    filter_order_date_type INT NOT NULL,
    filter_order_sort_type INT NOT NULL,
    filter_order_sort_asc INT NOT NULL,
    order_min_value DECIMAL(18, 2) NOT NULL,
    is_open BOOLEAN NOT NULL,
    is_printer_connected BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES PUBLIC.stores(id)
);
