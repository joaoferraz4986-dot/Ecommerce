CREATE TABLE variation (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT NOT NULL,

    name VARCHAR(100) NOT NULL,
    value VARCHAR(100) NOT NULL,

    price_modifier DECIMAL(10,2) DEFAULT 0,

    quantity INT DEFAULT 0,

    CONSTRAINT fk_variation_product
        FOREIGN KEY (product_id)
        REFERENCES product(id)
        ON DELETE CASCADE
);