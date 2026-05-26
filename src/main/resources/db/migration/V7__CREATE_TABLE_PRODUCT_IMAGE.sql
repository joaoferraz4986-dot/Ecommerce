CREATE TABLE product_image (
    id BIGSERIAL PRIMARY KEY,
    image_path TEXT NOT NULL,
    is_primary BOOLEAN DEFAULT FALSE,
    product_id BIGINT NOT NULL,

    CONSTRAINT fk_product_image_product
        FOREIGN KEY (product_id)
        REFERENCES product(id)
        ON DELETE CASCADE
);