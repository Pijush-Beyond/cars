package com.webapp.carrent.repository;

import java.util.List;

import com.webapp.carrent.model.Cars;

import org.springframework.data.jpa.repository.JpaRepository;

public interface  CarsRepository extends JpaRepository<Cars, Integer> {
  public List<Cars> findByType(String type);
}
