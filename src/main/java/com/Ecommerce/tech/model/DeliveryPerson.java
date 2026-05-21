package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "delivery_person" )
public class DeliveryPerson {

    @Id
    @GeneratedValue( strategy = GenerationType.UUID )
    private UUID id;

    @Column( length = 50, nullable = false )
    private String name;

    @Column( length = 15, nullable = false, unique = true )
    private String phone;

    @Column( nullable = false, unique = true )
    private String email;

    @Column( length = 14, nullable = false, unique = true )
    private String cpf;

    @Column( name = "date_birth", nullable = false )
    private LocalDate dateBirth;

    @Column(  name = "vehicle_type", length = 50, nullable = false )
    private String vehicleType;

    @Column( name = "vehicle_plate", length = 10, unique = true )
    private String vehiclePlate;

    @Column( name = "vehicle_model", length = 50 )
    private String vehicleModel;

    @Column(  name = "vehicle_color", length = 30 )
    private String vehicleColor;

    @Column( name = "profile_image_url" )
    private String profileImageUrl;

    @Column( name = "pix_key" )
    private String pixKey;

    @Column( nullable = false )
    private Boolean available = false;

    @Column( name = "total_deliveries", nullable = false )
    private Integer totalDeliveries = 0;

    @Column( precision = 3, scale = 2, nullable = false )
    private BigDecimal rating = BigDecimal.ZERO;

    @Enumerated(  EnumType.STRING )
    @Column( nullable = false )
    private UserStatus status = UserStatus.ENABLED;

    @Column( name = "created_at", nullable = false, updatable = false  )
    private OffsetDateTime createdAt = OffsetDateTime.now(ZoneOffset.UTC);
}