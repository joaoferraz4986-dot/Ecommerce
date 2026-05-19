package com.Ecommerce.tech.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table( name = "category")
public class Category {

    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private long id;

    @Column( length = 100, nullable = false )
    private String name;

    @Column( nullable = false )
    private String description;

    @ManyToOne( fetch = FetchType.LAZY )
    @JoinColumn( name = "parent_id" )
    private Category parent;

    @OneToMany( mappedBy = "parent", fetch = FetchType.LAZY )
    private List<Category> childrenCategories;

}
