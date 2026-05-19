CREATE TABLE delivery_person (
    id UUID PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    phone VARCHAR(30),
    vehicle_type VARCHAR(50),
    status user_status DEFAULT 'AVAILABLE',
    rating DECIMAL(3,2) DEFAULT 0
);