package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "product_image" )
public class ProductImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column( name = "image_path", nullable = false )
    private String imagePath;

    @Column( name = "is_primary" )
    private Boolean isPrimary = false;

    @ManyToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "product_id" )
    @Column( nullable = false )
    private Product product;
}
