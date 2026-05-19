CREATE TABLE payment (
    id BIGSERIAL PRIMARY KEY,

    order_id BIGINT NOT NULL,

    amount DECIMAL(10,2) NOT NULL,

    method VARCHAR(50),
    status VARCHAR(30),

    transaction_id VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_payment_order
        FOREIGN KEY (order_id)
        REFERENCES orders(id)
        ON DELETE CASCADE
);