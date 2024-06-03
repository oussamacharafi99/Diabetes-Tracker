package com.Beans;

public class Ropa {
    public Ropa(int id, int user_id, String ropa_name) {
        this.id = id;
        this.user_id = user_id;
        this.ropa_name = ropa_name;
    }
    public Ropa( int user_id, String ropa_name) {
        this.user_id = user_id;
        this.ropa_name = ropa_name;
    }
    public Ropa() {
    }

    private int id;
    private int user_id;
    private String ropa_name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }


    public String getRopa_name() {
        return ropa_name;
    }

    public void setRopa_name(String ropa_name) {
        this.ropa_name = ropa_name;
    }
}
