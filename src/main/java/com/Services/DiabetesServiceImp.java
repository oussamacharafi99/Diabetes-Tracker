package com.Services;

import com.Beans.Diabetes;
import com.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class DiabetesServiceImp implements DiabetesService{
    @Autowired
  UserRepository userRepository;

    @Override
    @Transactional
    public void save(Diabetes diabetes) {
        userRepository.save(diabetes);
    }

    @Override
    @Transactional
    public ArrayList<Diabetes> getDiabetes() {
        return (ArrayList<Diabetes>) userRepository.findAll();
    }

    @Override
    public void delete(int id) {
        userRepository.deleteById(id);
    }

    @Override
    public void update(Diabetes student) {

    }

}
