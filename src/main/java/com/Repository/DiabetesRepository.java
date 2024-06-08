package com.Repository;

import com.Beans.Diabetes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;


@Repository
//public interface UserRepository extends JpaRepository<Diabetes, Integer> {
public interface DiabetesRepository extends JpaRepository<Diabetes, Integer> {
    List<Diabetes> findByDate(LocalDate date);
}