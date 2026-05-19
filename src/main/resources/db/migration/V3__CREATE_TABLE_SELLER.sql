CREATE TABLE seller (
    id UUID PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    image_path TEXT,
    description TEXT,
    total_products INT DEFAULT 0,
    avg_rating DECIMAL(3,2) DEFAULT 0,
    status user_status DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);