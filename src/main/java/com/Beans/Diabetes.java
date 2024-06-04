package com.Beans;

import javax.persistence.*;

@Entity
@Table(name = "diabetes")
public class Diabetes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "user_id", nullable = false)
    private int userId;

    @Column(name = "diabetes", nullable = false)
    private String diabetes;

    @Column(name = "date", nullable = false)
    private String date;

    // Constructors, getters, and setters

    public Diabetes(int id, int userId, String diabetes, String date) {
        this.id = id;
        this.userId = userId;
        this.diabetes = diabetes;
        this.date = date;
    }

    public Diabetes(int userId, String diabetes, String date) {
        this.userId = userId;
        this.diabetes = diabetes;
        this.date = date;
    }

    public Diabetes() {
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

    public String getDiabetes() {
        return diabetes;
    }

    public void setDiabetes(String diabetes) {
        this.diabetes = diabetes;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
