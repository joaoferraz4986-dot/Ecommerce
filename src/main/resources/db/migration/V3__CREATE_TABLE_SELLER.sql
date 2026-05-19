CREATE TABLE seller (
    id UUID PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15) UNIQUE,
    image_path TEXT,
    description TEXT,
    total_products INT DEFAULT 0,
    avg_rating DECIMAL(3,2) DEFAULT 0,
    status user_status DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    main_category_id BIGINT

        CONSTRAINT add fk_seller_main_category(
            FOREIGN KEY (main_category_id)
            REFERENCES category(id)
            ON DELETE SET NULL
        )
);preferred_category_id