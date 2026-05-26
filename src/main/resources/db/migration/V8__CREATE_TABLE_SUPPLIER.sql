CREATE TABLE supplier (
    id UUID PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    contact_email VARCHAR(150),
    phone VARCHAR(30),
    status user_status DEFAULT 'ENABLED',
);
