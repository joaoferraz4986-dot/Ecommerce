CREATE TABLE cart_item (
    id BIGSERIAL PRIMARY KEY,

    quantity INT NOT NULL,

    cart_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    variation_id BIGINT,

    CONSTRAINT fk_cart_item_cart
        FOREIGN KEY (cart_id)
        REFERENCES cart(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_cart_item_product
        FOREIGN KEY (product_id)
        REFERENCES product(id),

    CONSTRAINT fk_cart_item_variation
        FOREIGN KEY (variation_id)
        REFERENCES variation(id)
);