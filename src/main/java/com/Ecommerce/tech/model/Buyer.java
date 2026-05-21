package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.UUID;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Table( name = "buyer" )
public class Buyer {

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

    @Column( length = 15, nullable = false, unique = true)
    private String phone;

    @Column( name = "image_path" )
    private String imagePath;

    @Enumerated( EnumType.STRING )
    private UserStatus status = UserStatus.ENABLED;

    @Column( name = "created_at", nullable = false, updatable = false )
    private OffsetDateTime createdAt = OffsetDateTime.now(ZoneOffset.UTC);

    @ManyToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "preferred_category_id" )
    private Category preferredCategory;

}
