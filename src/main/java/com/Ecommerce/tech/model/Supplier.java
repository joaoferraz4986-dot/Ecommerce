package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "supplier" )
public class Supplier {
    @Id
    @GeneratedValue( strategy = GenerationType.UUID )
    private UUID id;

    @Column( length = 150, nullable = false )
    private String name;

    @Column( name = "contact_email", length = 150 )
    private String contactEmail;

    @Column( length = 30 )
    private String phone;

    @Enumerated( EnumType.STRING )
    private UserStatus userStatus = UserStatus.ENABLED;
}
