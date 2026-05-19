CREATE TABLE review (
    id BIGSERIAL PRIMARY KEY,

    buyer_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    order_id BIGINT NOT NULL,

    rating INT CHECK (rating BETWEEN 1 AND 5),

    comment TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_review_buyer
        FOREIGN KEY (buyer_id)
        REFERENCES buyer(id),

    CONSTRAINT fk_review_product
        FOREIGN KEY (product_id)
        REFERENCES product(id),

    CONSTRAINT fk_review_order
        FOREIGN KEY (order_id)
        REFERENCES orders(id)
);