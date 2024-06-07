package com.Services;

import com.Beans.Diabetes;
import com.Repository.DiabetesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class DiabetesServiceImp{

    @Autowired
    DiabetesRepository diabetesRepository;

    @Transactional
    public void save(Diabetes diabetes) {
         diabetesRepository.save(diabetes);
        }


    @Transactional
    public ArrayList<Diabetes> getDiabetes() {
        return (ArrayList<Diabetes>) diabetesRepository.findAll();
    }


    public void delete(int id) {
        diabetesRepository.deleteById(id);
    }

    public void update(Diabetes student) {

    }

    @Transactional
    public Diabetes getLastDiabetesRecord() {
        return diabetesRepository.findAll().get(diabetesRepository.findAll().size() - 1);
    }

}
