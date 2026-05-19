CREATE TABLE wishlist (
    id BIGSERIAL PRIMARY KEY,

    buyer_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_wishlist_buyer
        FOREIGN KEY (buyer_id)
        REFERENCES buyer(id),

    CONSTRAINT fk_wishlist_product
        FOREIGN KEY (product_id)
        REFERENCES product(id)
);