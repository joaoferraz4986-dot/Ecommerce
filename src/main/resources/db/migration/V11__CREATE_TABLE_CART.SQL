CREATE TABLE cart (
    id BIGSERIAL PRIMARY KEY,

    status VARCHAR(30) DEFAULT 'ENABLED',

    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,

    buyer_id BIGINT NOT NULL,

    CONSTRAINT fk_cart_buyer
        FOREIGN KEY (buyer_id)
        REFERENCES buyer(id)
);