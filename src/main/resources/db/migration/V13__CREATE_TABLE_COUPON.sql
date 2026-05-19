CREATE TABLE coupon (
    id BIGSERIAL PRIMARY KEY,

    code VARCHAR(50) UNIQUE NOT NULL,

    discount_type VARCHAR(20) NOT NULL,
    discount_value DECIMAL(10,2) NOT NULL,

    max_uses INT,
    used_count INT DEFAULT 0,

    status VARCHAR(30) DEFAULT 'ACTIVE',

    expires_at TIMESTAMP
);