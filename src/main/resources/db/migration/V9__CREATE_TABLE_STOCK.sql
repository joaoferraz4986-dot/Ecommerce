CREATE TABLE stock (
    id BIGSERIAL PRIMARY KEY,

    product_id BIGINT NOT NULL,
    variation_id BIGINT,
    supplier_id BIGINT,

    quantity INT DEFAULT 0,
    min_quantity INT DEFAULT 0,

    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_stock_product
        FOREIGN KEY (product_id)
        REFERENCES product(id),

    CONSTRAINT fk_stock_variation
        FOREIGN KEY (variation_id)
        REFERENCES variation(id),

    CONSTRAINT fk_stock_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES supplier(id)
);