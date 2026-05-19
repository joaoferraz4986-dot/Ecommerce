CREATE TABLE buyer (
    id UUID PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(60) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(30),
    image_path TEXT,
    status user_status DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    preferred_category_id BIGINT

    CONSTRAINT add fk_buyer_preferred_category(
        FOREIGN KEY (preferred_category_id)
        REFERENCES category(id)
        ON DELETE SET NULL
    )
);