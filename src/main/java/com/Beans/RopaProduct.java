package com.Beans;

import javax.persistence.*;

@Entity
@Table(name = "ropa_product")
public class RopaProduct {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "ropa_id")
    private Ropa ropa;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;


    public RopaProduct() {
    }

    public RopaProduct(Ropa ropa, Product product) {
        this.ropa = ropa;
        this.product = product;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Ropa getRopa() {
        return ropa;
    }

    public void setRopa(Ropa ropa) {
        this.ropa = ropa;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
