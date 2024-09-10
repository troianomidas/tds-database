
CREATE VIEW PUBLIC.view_customer_balance_points AS
SELECT
    id,
    store_id,
    name,
    phone,
    email,
    document
    --quantso_points,
    --balance_points
FROM PUBLIC.customers;
