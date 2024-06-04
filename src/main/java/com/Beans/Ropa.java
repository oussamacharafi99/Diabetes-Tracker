package com.Beans;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "ropa")
public class Ropa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "user_id", nullable = false)
    private int userId;

    @Column(name = "ropa_name", nullable = false)
    private String ropaName;

    @OneToMany(mappedBy = "ropa", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<RopaProduct> ropaProducts;

    // Constructors, getters, and setters

    public Ropa(int id, int userId, String ropaName) {
        this.id = id;
        this.userId = userId;
        this.ropaName = ropaName;
    }

    public Ropa(int userId, String ropaName) {
        this.userId = userId;
        this.ropaName = ropaName;
    }

    public Ropa() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getRopaName() {
        return ropaName;
    }

    public void setRopaName(String ropaName) {
        this.ropaName = ropaName;
    }

    public Set<RopaProduct> getRopaProducts() {
        return ropaProducts;
    }

    public void setRopaProducts(Set<RopaProduct> ropaProducts) {
        this.ropaProducts = ropaProducts;
    }
}
