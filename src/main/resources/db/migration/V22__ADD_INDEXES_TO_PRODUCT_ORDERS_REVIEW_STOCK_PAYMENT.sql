CREATE INDEX idx_product_name
ON product(name);

CREATE INDEX idx_order_buyer
ON orders(buyer_id);

CREATE INDEX idx_review_product
ON review(product_id);

CREATE INDEX idx_stock_product
ON stock(product_id);

CREATE INDEX idx_order_status
ON orders(status);

CREATE INDEX idx_payment_status
ON payment(status);