package com.Ecommerce.tech.model;

import co.elastic.clients.util.DateTime;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "product")
public class Product {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private long id;

    @Column( length = 200, nullable = false )
    private String name;

    @Column( length = 5000 )
    private String description;

    @Column( precision = 10, scale = 2, nullable = false )
    private BigDecimal price;

    private int quantity = 0;

    @Column( length = 100, unique = true )
    private String sku;

    @Enumerated( EnumType.STRING )
    private UserStatus userStatus = UserStatus.ENABLED;

    @Column( name = "created_at", updatable = false, nullable = false )
    private OffsetDateTime createdAt = OffsetDateTime.now(ZoneOffset.UTC);

    @ManyToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "seller_id" )
    @Column( nullable = false )
    private Seller seller;

    @ManyToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "category_id" )
    @Column( nullable = false )
    private Category category;

    @OneToMany( fetch = FetchType.EAGER )
    @JoinColumn( name = "product" )
    private List<ProductImage> productImageList;
}
