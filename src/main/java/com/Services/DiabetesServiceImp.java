package com.Services;

import com.Beans.Diabetes;
import com.Repository.DiabetesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class DiabetesServiceImp implements DiabetesService{

    @Autowired
    DiabetesRepository diabetesRepository;

    @Override
    @Transactional
    public void save(Diabetes diabetes) {
        diabetesRepository.save(diabetes);
    }

    @Override
    @Transactional
    public ArrayList<Diabetes> getDiabetes() {
        return (ArrayList<Diabetes>) diabetesRepository.findAll();
    }

    @Override
    public void delete(int id) {
        diabetesRepository.deleteById(id);
    }

    @Override
    public void update(Diabetes student) {

    }

}
