package com.Beans;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "image", nullable = false)
    private String image;

    @Column(name = "poid", nullable = false)
    private double poid;

    @Column(name = "calories", nullable = false)
    private int calories;
    @Column(name = "type", nullable = false)
    private String type;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<RopaProduct> ropaProducts;

    // Constructors, getters, and setters

    public Product(int id, String name, String image, double poid, int calories) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.poid = poid;
        this.calories = calories;
    }

    public Product(String name, String image, double poid, int calories) {
        this.name = name;
        this.image = image;
        this.poid = poid;
        this.calories = calories;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPoid() {
        return poid;
    }

    public void setPoid(double poid) {
        this.poid = poid;
    }

    public int getCalories() {
        return calories;
    }

    public void setCalories(int calories) {
        this.calories = calories;
    }

    public Set<RopaProduct> getRopaProducts() {
        return ropaProducts;
    }

    public void setRopaProducts(Set<RopaProduct> ropaProducts) {
        this.ropaProducts = ropaProducts;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
