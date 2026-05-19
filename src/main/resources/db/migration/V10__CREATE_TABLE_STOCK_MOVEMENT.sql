CREATE TABLE stock_movement (
    id BIGSERIAL PRIMARY KEY,

    stock_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,

    movement_type VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,

    description TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_movement_stock
        FOREIGN KEY (stock_id)
        REFERENCES stock(id),

    CONSTRAINT fk_movement_product
        FOREIGN KEY (product_id)
        REFERENCES product(id)
);