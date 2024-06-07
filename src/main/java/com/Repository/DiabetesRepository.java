package com.Repository;

import com.Beans.Diabetes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
//public interface UserRepository extends JpaRepository<Diabetes, Integer> {
public interface DiabetesRepository extends JpaRepository<Diabetes, Integer> {
    Optional<Diabetes> findTopByOrderByIdDesc();
}