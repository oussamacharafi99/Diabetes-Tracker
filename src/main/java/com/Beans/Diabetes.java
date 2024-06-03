package com.Beans;

public class Diabetes {
    public Diabetes(int id, int user_id, String diabetes , String date) {
        this.id = id;
        this.user_id = user_id;
        this.diabetes = diabetes;
        this.date = date;
    }
    public Diabetes( int user_id, String diabetes , String date) {
        this.user_id = user_id;
        this.diabetes = diabetes;
        this.date = date;
    }
    public Diabetes() {
    }

    private int id;
    private int user_id;
    private String diabetes;
    private String date;

    public int getId() {
        return id;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getDiabetes() {
        return diabetes;
    }

    public String getDate() {
        return date;
    }
}
