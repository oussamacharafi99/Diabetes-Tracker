package com.Services;

import com.Beans.Diabetes;

import java.util.ArrayList;
import java.util.List;

public interface DiabetesService {
    void save(Diabetes student);
    ArrayList<Diabetes> getDiabetes();
    void delete(int id);
    void update(Diabetes student);
}
