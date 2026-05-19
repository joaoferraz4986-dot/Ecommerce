CREATE TABLE delivery (
    id BIGSERIAL PRIMARY KEY,

    order_id BIGINT NOT NULL,
    delivery_person_id BIGINT,

    address_id BIGINT NOT NULL,

    tracking_code VARCHAR(100),

    status VARCHAR(30) DEFAULT 'WAITING',

    start_date TIMESTAMP,
    end_date TIMESTAMP,

    CONSTRAINT fk_delivery_order
        FOREIGN KEY (order_id)
        REFERENCES orders(id),

    CONSTRAINT fk_delivery_person
        FOREIGN KEY (delivery_person_id)
        REFERENCES delivery_person(id),

    CONSTRAINT fk_delivery_address
        FOREIGN KEY (address_id)
        REFERENCES address(id)
);