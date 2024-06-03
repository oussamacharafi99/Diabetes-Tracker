package com.Beans;

public class RopaProduct {

    private int id;

    private Ropa ropa;

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
