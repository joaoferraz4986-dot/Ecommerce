package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "stock" )
public class Stock {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private long id;

    private int quantity = 0;

    private int min_quantity = 0;

    @Column( name = "last_update" )
    private OffsetDateTime lastUpdate = OffsetDateTime.now(ZoneOffset.UTC);

    @OneToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "product_id" )
    @Column( nullable = false )
    private Product product;

    @OneToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "variation_id" )
    private Variation variation;

    @OneToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "supplier_id" )
    private Supplier supplier;
}
