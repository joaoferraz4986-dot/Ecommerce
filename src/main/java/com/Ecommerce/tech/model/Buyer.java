package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Table( name = "buyer")
public class Buyer {

    @Id
    @GeneratedValue( strategy = GenerationType.UUID )
    private UUID id;

    @Column( length = 50, nullable = false )
    private String nome;

    @Email
    @Column( length = 60, nullable = false, unique = true )
    private String email;

    @Column( length = 255, nullable = false )
    private String password;

    @Column( length = 15, nullable = false, unique = true)
    private String phone;

    @Column( name = "image_path", length = 255, nullable = false )
    private String imagePath;

    @Enumerated( EnumType.STRING )
    @Column( columnDefinition = "user_status 'ACTIVE'" )
    private UserStatus status;

    @Column( name = "created_at", nullable = false )
    private LocalDateTime dateTime;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn( name = "preferred_category_id" )
    private Category preferredCategory;

}
