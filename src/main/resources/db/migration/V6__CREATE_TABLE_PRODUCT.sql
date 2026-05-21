CREATE TABLE product (
    id BIGSERIAL PRIMARY KEY,

    name VARCHAR(200) NOT NULL,
    description VARCHAR(5000),

    price DECIMAL(10,2) NOT NULL,
    quantity INT DEFAULT 0,

    sku VARCHAR(100) UNIQUE,

    status user_status DEFAULT 'ENABLED',

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    seller_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,

    CONSTRAINT fk_product_seller
        FOREIGN KEY (seller_id)
        REFERENCES seller(id),

    CONSTRAINT fk_product_category
        FOREIGN KEY (category_id)
        REFERENCES category(id)
);