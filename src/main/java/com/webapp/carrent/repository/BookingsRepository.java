package com.webapp.carrent.repository;

import com.webapp.carrent.model.Bookings;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingsRepository extends JpaRepository<Bookings, Integer> {
  
}
