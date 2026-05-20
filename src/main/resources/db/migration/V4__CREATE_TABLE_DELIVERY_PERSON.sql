CREATE TABLE delivery_person (
    id UUID PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(255) UNIQUE,

    cpf VARCHAR(14) NOT NULL UNIQUE,
    date_birth DATE NOT NULL,

    vehicle_type VARCHAR(50) NOT NULL,
    vehicle_plate VARCHAR(10) UNIQUE,
    vehicle_model VARCHAR(50),
    vehicle_color VARCHAR(30),

    profile_image_url TEXT,

    pix_key VARCHAR(255),
    available BOOLEAN DEFAULT FALSE,
    total_deliveries INTEGER DEFAULT 0,

    rating DECIMAL(3,2) DEFAULT 0
        CHECK (rating >= 0 AND rating <= 5),

    status user_status DEFAULT 'ENABLED',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);