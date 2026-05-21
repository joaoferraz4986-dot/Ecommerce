package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "seller")
public class Seller {
    @Id
    @GeneratedValue( strategy = GenerationType.UUID )
    private UUID id;

    @Column( length = 50, nullable = false )
    private String name;

    @Email
    @Column( length = 100, nullable = false, unique = true )
    private String email;

    @Column( nullable = false )
    private String password;

    @Column( length = 15, nullable = false, unique = true )
    private String phone;

    @Column( name = "image_path" )
    private String imagePath;

    @Column( columnDefinition = "TEXT")
    private String description;

    @Column( name = "total_products" )
    private int totalProducts = 0;

    @Column( name = "avg_rating", precision = 3, scale = 2 )
    private BigDecimal avgRating = BigDecimal.ZERO;

    @Enumerated( EnumType.STRING )
    private UserStatus status = UserStatus.ENABLED;

    @Column( name = "created_at", nullable = false, updatable = false )
    private OffsetDateTime createdAt = OffsetDateTime.now(ZoneOffset.UTC);

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn( name = "main_category_id" )
    private Category mainCategory;
}
