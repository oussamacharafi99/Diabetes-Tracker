package com.Repository;

import com.Beans.Diabetes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends JpaRepository<Diabetes, Integer> {

}