CREATE TABLE orders (
    id BIGSERIAL PRIMARY KEY,

    buyer_id BIGINT NOT NULL,
    coupon_id BIGINT,

    total_value DECIMAL(10,2) NOT NULL,

    payment_method VARCHAR(50),

    status VARCHAR(30) DEFAULT 'PENDING',

    estimated_delivery TIMESTAMP,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_buyer
        FOREIGN KEY (buyer_id)
        REFERENCES buyer(id),

    CONSTRAINT fk_order_coupon
        FOREIGN KEY (coupon_id)
        REFERENCES coupon(id)
);
