package com.Beans;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

@Entity
@Table(name = "diabetes")
public class Diabetes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "user_id")
    private int userId;

    @Column(name = "diabetes")
    private String diabetes;

    @Column(name = "date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;  // Use LocalDate instead of Date

    @Column(name = "heurs")
    @DateTimeFormat(pattern = "HH:mm")  // Correct pattern for LocalTime
    private LocalTime heurs;

    public Diabetes() {
    }

    public Diabetes(int id, int userId, String diabetes, LocalDate date, LocalTime heurs) {
        this.id = id;
        this.userId = userId;
        this.diabetes = diabetes;
        this.date = date;
        this.heurs = heurs;
    }

    public Diabetes(int userId, String diabetes, LocalDate date, LocalTime heurs) {
        this.userId = userId;
        this.diabetes = diabetes;
        this.date = date;
        this.heurs = heurs;
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

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getHeurs() {
        return heurs;
    }

    public void setHeurs(LocalTime heurs) {
        this.heurs = heurs;
    }
}
