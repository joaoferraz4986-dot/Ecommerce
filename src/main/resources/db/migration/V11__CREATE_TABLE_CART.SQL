CREATE TABLE cart (
    id BIGSERIAL PRIMARY KEY,

    buyer_id BIGINT NOT NULL,

    status VARCHAR(30) DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_cart_buyer
        FOREIGN KEY (buyer_id)
        REFERENCES buyer(id)
);