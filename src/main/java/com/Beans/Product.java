package com.Beans;

public class Product {
    public Product(int id, String name, String image, double poid, int calories) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.poid = poid;
        this.calories = calories;
    }
    public Product( String name, String image, double poid, int calories) {
        this.name = name;
        this.image = image;
        this.poid = poid;
        this.calories = calories;
    }
    public Product() {
    }

    private int id;
    private String name;
    private String image;
    private double poid;
    private int calories;

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
}
