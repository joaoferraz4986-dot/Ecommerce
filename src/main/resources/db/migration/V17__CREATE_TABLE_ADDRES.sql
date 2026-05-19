CREATE TABLE address (
    id BIGSERIAL PRIMARY KEY,

    owner_id BIGINT NOT NULL,
    owner_type VARCHAR(30) NOT NULL,

    street VARCHAR(255),
    number VARCHAR(30),
    complement VARCHAR(255),

    city VARCHAR(100),
    state VARCHAR(100),

    zip_code VARCHAR(20),

    country VARCHAR(100)
);