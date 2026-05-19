CREATE TABLE product (
    id BIGSERIAL PRIMARY KEY,
    seller_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,

    name VARCHAR(200) NOT NULL,
    description TEXT,

    price DECIMAL(10,2) NOT NULL,
    quantity INT DEFAULT 0,

    sku VARCHAR(100) UNIQUE,

    status VARCHAR(30) DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_product_seller
        FOREIGN KEY (seller_id)
        REFERENCES seller(id),

    CONSTRAINT fk_product_category
        FOREIGN KEY (category_id)
        REFERENCES category(id)
);